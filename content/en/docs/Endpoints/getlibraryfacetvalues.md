---
title: "getLibraryFacetValues"
linkTitle: "getLibraryFacetValues [OS]"
OpenSubsonic:
  - Extension
categories:
  - Browsing
description: >
  Returns authorized distinct values and counts for one library facet.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `extendedLibrary` (As returned by
[`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`POST http://your-server/rest/getLibraryFacetValues?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json`

Returns a page of distinct, non-null values for one library field, together
with the number of distinct authorized entities in the base result set that
have each value. This lets clients discover values for filters such as roles,
moods, groupings, release types, and record labels without downloading and
aggregating every entity.

See [Extended Library](../../extensions/extendedlibrary) for the shared filter,
cursor, authorization, validation, and security rules.

This endpoint requires `Content-Type: application/json`, `f=json`, and a JSON
body. It has no GET, form-POST, or XML variant.

### Request body

| Field | Required | Default | Details |
| --- | --- | --- | --- |
| `entity` | **Yes** | | `song`, `album`, or `artist`. Selects the field and filter catalogs. |
| `field` | **Yes** | | One facet field supported for the selected entity. |
| `filter` | No | No filter | An entity-specific base filter using the same schema as the corresponding library endpoint. |
| `limit` | No | `100` | Number of values to return, from 1 through 500. |
| `cursor` | No | First page | Opaque forward-only facet continuation token. |

A request must not contain `properties` or `sort`. Values always use the fixed
ordering defined below.

```json
{
  "entity": "album",
  "field": "recordLabel",
  "filter": {
    "field": "year",
    "operator": "greaterThanOrEqual",
    "value": 2000
  },
  "limit": 100
}
```

The base filter is applied exactly as supplied. In particular, the server does
not automatically remove rules for the requested facet field. A client
implementing disjunctive faceting must omit or adjust that rule itself.

### Facet fields

| Entity | Type | Fields |
| --- | --- | --- |
| Song | String | `genre`, `mood`, `grouping`, `role`, `musicFolderId`, `contentType`, `suffix`, `explicitStatus` |
| Song | Integer | `year` |
| Album | String | `genre`, `mood`, `releaseType`, `recordLabel`, `musicFolderId`, `explicitStatus` |
| Album | Integer | `year` |
| Album | Boolean | `isCompilation` |
| Artist | String | `role`, `genre`, `musicFolderId` |

Facet values use the same native JSON type as the corresponding filter value.
In particular, `musicFolderId` values are strings in this extension, even
though the legacy `MusicFolder.id` response schema uses an integer. Clients can
convert a legacy folder ID to its decimal string representation.

### Counting and ordering

`count` is the number of distinct authorized entities in the filtered base set
that have a value. An entity with the same value more than once contributes
only one to that value's count. An entity with several different values can
contribute once to each value.

Missing fields do not produce a facet value. Clients can use `isNull` and
`isNotNull` with the entity browsing endpoints when they need to query
presence.

Facet values always sort in ascending type-aware order:

- integers use numeric order;
- booleans order `false` before `true`;
- strings use lexicographic Unicode scalar-value order, without locale or
  case folding.

Because every field has one fixed value type, values from different JSON types
are never mixed in one result. There is no client-selectable count ordering in
version 1.

### Result

A [`subsonic-response`](../../responses/subsonic-response) with
`libraryFacetValues`. `value` and `total` are required. `nextCursor` is present
only when another page is available.

```json
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "libraryFacetValues": {
      "value": [
        {"value": "4AD", "count": 18},
        {"value": "Blue Note", "count": 42}
      ],
      "total": 27,
      "nextCursor": "opaque-facet-cursor"
    }
  }
}
```

`total` is the current number of distinct non-null values before pagination,
not the number of matching entities. A result with no values is successful and
returns `"value": []` and `"total": 0`.

### Cursor semantics

A continuation request must repeat the structurally identical `entity`,
`field`, and `filter`. It may change `limit`:

```json
{
  "entity": "album",
  "field": "recordLabel",
  "filter": {
    "field": "year",
    "operator": "greaterThanOrEqual",
    "value": 2000
  },
  "limit": 50,
  "cursor": "opaque-facet-cursor"
}
```

The server binds and integrity-protects the cursor against the authenticated
principal, endpoint, entity, field, filter, and fixed ordering. Facet cursors
cannot be used with entity browsing endpoints or a different facet query.

Facet cursors are not snapshots. Values, counts, and `total` are recomputed
from the currently authorized library and may change during traversal.

The server processes a facet request in this order:

1. Apply authorization and visibility.
2. Apply the optional base filter.
3. Produce distinct entity/value pairs for the requested field.
4. Group pairs by value and calculate counts.
5. Sort values using the fixed typed ordering.
6. Apply the cursor.
7. Apply the limit.

### Errors

A missing body fails with code `10`. Unknown entities or fields, an
entity/filter mismatch, unsupported members such as `sort`, invalid limits,
and invalid or mismatched cursors fail with code `0`. An unsupported extension
may return `404 Extension not supported`.

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new extension endpoint.
{{< /alert >}}
