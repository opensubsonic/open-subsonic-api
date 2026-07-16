---
title: "Extended Library"
linkTitle: "Extended Library"
OpenSubsonic:
  - Extension
description: >
  Project, recursively filter, sort, and cursor-page songs, albums, and artists.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `extendedLibrary` (As returned by
[`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

The `extendedLibrary` extension provides a common way to browse a large media
library with explicit projection, recursive filters, ordered sorting, and
forward-only cursor pagination. Its concepts are adapted from
[Kodi's AudioLibrary queries](https://kodi.wiki/view/JSON-RPC_API/v13#AudioLibrary.GetSongs),
but this extension does not use Kodi's JSON-RPC envelope or its `start`/`end`
pagination behavior.

## Version 1

A server advertising the following object must implement all four endpoints:

```json
{"name": "extendedLibrary", "versions": [1]}
```

- [`getLibrarySongs`](../../endpoints/getlibrarysongs)
- [`getLibraryAlbums`](../../endpoints/getlibraryalbums)
- [`getLibraryArtists`](../../endpoints/getlibraryartists)
- [`getLibraryFacetValues`](../../endpoints/getlibraryfacetvalues)

### Transport

These endpoints are intentionally JSON-only and POST-only:

- The request must use `POST` and `Content-Type: application/json`.
- The normal authentication, `v`, and `c` parameters remain in the query
  string.
- The query parameter `f=json` is required.
- A JSON body is required. `{}` is a valid first-page query.
- GET, form-encoded POST, XML, wildcards, and JSON-RPC envelopes are not
  supported by version 1.

### Query object

```json
{
  "properties": ["album", "artist", "duration", "coverArt"],
  "filter": {
    "and": [
      {"field": "year", "operator": "greaterThanOrEqual", "value": 2000},
      {"field": "genre", "operator": "equals", "value": "Rock"}
    ]
  },
  "sort": [
    {"field": "artist", "direction": "ascending"},
    {"field": "album", "direction": "ascending"}
  ],
  "limit": 100,
  "cursor": "opaque-continuation-token"
}
```

| Field | Type | Required | Default | Meaning |
| --- | --- | --- | --- | --- |
| `properties` | string array | No | `[]` | Optional top-level fields to project. |
| `filter` | filter node | No | No filter | A leaf rule, AND group, or OR group. |
| `sort` | sort array | No | `id ascending` | One to five unique ordered sort keys. |
| `limit` | integer | No | `100` | Page size from 1 through 500. |
| `cursor` | string | No | First page | An opaque continuation token. |

Unknown members and invalid values must be rejected, not ignored or clamped.
The `filter`, `sort`, and `properties` fields are optional. Empty
`properties` is valid; empty `filter` or `sort` objects/arrays are not.

## Projection

The endpoints reuse the canonical [`Child`](../../responses/child),
[`AlbumID3`](../../responses/albumid3), and
[`ArtistID3`](../../responses/artistid3) entities. OpenAPI 3.0 cannot express
conditional field omission, so the rules in this section are normative.

Every returned entity contains its required core fields:

| Entity | Core fields |
| --- | --- |
| Song | `id`, `isDir`, `title` |
| Album | `id`, `name`, `songCount`, `duration`, `created` |
| Artist | `id`, `name` |

Omitted or empty `properties` returns only core fields. An unrequested optional
field must be omitted. A requested field may still be omitted when its metadata
is unavailable. Filtering and sorting do not implicitly project their fields.

Version 1 freezes the following optional-property catalogs.

### Song properties

`parent`, `album`, `artist`, `track`, `year`, `genre`, `coverArt`, `size`,
`contentType`, `suffix`, `transcodedContentType`, `transcodedSuffix`, `duration`,
`bitRate`, `bitDepth`, `samplingRate`, `channelCount`, `path`, `isVideo`,
`userRating`, `averageRating`, `playCount`, `discNumber`, `created`, `starred`,
`albumId`, `artistId`, `type`, `mediaType`, `bookmarkPosition`, `originalWidth`,
`originalHeight`, `played`, `bpm`, `comment`, `sortName`, `musicBrainzId`,
`isrc`, `genres`, `artists`, `displayArtist`, `albumArtists`,
`displayAlbumArtist`, `contributors`, `displayComposer`, `moods`, `replayGain`,
`explicitStatus`, `works`, `movements`, `groupings`.

### Album properties

`version`, `artist`, `artistId`, `coverArt`, `playCount`, `starred`, `year`,
`genre`, `played`, `userRating`, `recordLabels`, `musicBrainzId`, `genres`,
`artists`, `displayArtist`, `releaseTypes`, `moods`, `sortName`,
`originalReleaseDate`, `releaseDate`, `isCompilation`, `explicitStatus`,
`discTitles`.

`AlbumID3.song` is deliberately excluded and must be rejected if requested.

### Artist properties

`coverArt`, `artistImageUrl`, `albumCount`, `starred`, `musicBrainzId`,
`sortName`, `disambiguation`, `roles`.

Wildcards, dotted paths, and nested projection are not supported. When
`artists` or `albumArtists` is selected, each nested `ArtistID3` reference
contains only its required `id` and `name`. Other selected value objects, such
as replay gain or release dates, retain their canonical schemas.

## Recursive filters

A filter node has exactly one of these shapes:

```json
{"field": "year", "operator": "greaterThanOrEqual", "value": 2000}
```

```json
{"and": [{"field": "genre", "operator": "equals", "value": "Rock"}]}
```

```json
{"or": [{"field": "starred", "operator": "isNotNull"}]}
```

Logical arrays must contain at least one node. A node mixing `field`, `and`, or
`or` shapes is invalid.

### Operators and values

| Family | Operators | Value |
| --- | --- | --- |
| Equality/set | `equals`, `notEquals`, `in`, `notIn` | One typed value, or a non-empty homogeneous array for set operators. |
| Text/list | `contains`, `notContains`, `startsWith`, `endsWith` | A string. |
| Ordered | `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`, `between` | One typed ordered value, or an inclusive two-value array for `between`. |
| Presence | `isNull`, `isNotNull` | No `value` member. |

Values use native JSON types. Numeric fields require numbers, boolean fields
require booleans, IDs require strings, and dates require RFC 3339 date-time
strings. Set arrays must be homogeneous and may contain at most 100 values.
Text operators apply only to string or list-valued fields; ordered operators
apply only where the field has an ordered value. `between` includes both
bounds.

A missing field does not satisfy `notEquals`, `notIn`, `notContains`, or any
other value-based negative operator. Use `isNull` or `isNotNull` when presence
is part of the query.

### Portable song filter fields

| Value type | Fields |
| --- | --- |
| String or related string | `id`, `parent`, `title`, `album`, `albumId`, `artist`, `artistId`, `albumArtist`, `albumArtistId`, `contributorId`, `role`, `genre`, `mood`, `grouping`, `musicFolderId`, `comment`, `sortName`, `musicBrainzId`, `isrc`, `contentType`, `suffix`, `path`, `explicitStatus` |
| Integer | `year`, `track`, `discNumber`, `duration`, `size`, `bitRate`, `bitDepth`, `samplingRate`, `channelCount`, `playCount`, `userRating`, `bpm` |
| Number | `averageRating` |
| RFC 3339 date-time | `created`, `starred`, `played` |

### Portable album filter fields

| Value type | Fields |
| --- | --- |
| String or related string | `id`, `name`, `version`, `artist`, `artistId`, `genre`, `mood`, `releaseType`, `recordLabel`, `musicFolderId`, `sortName`, `musicBrainzId`, `explicitStatus` |
| Integer | `year`, `songCount`, `duration`, `playCount`, `userRating` |
| Boolean | `isCompilation` |
| RFC 3339 date-time | `created`, `starred`, `played` |

### Portable artist filter fields

| Value type | Fields |
| --- | --- |
| String or related string | `id`, `name`, `sortName`, `musicBrainzId`, `disambiguation`, `role`, `genre`, `musicFolderId`, `albumId`, `songId` |
| Integer | `albumCount` |
| RFC 3339 date-time | `starred` |

### Relationship fields

Relationship and list fields use **any related item** semantics for positive
operators. Negative operators require that no related value matches.

- Song contributor, role, genre, mood, grouping, artist, and album-artist
  fields match their related values.
- Album and artist `musicFolderId` matches when at least one authorized
  descendant song belongs to the folder.
- Artist `albumId` and `songId` match any credit on that media, not only its
  primary artist.

Servers apply authorization before relationship evaluation. Relationship
filters cannot inspect inaccessible descendants.

### Filter example

This query combines nested Boolean logic, a typed range, a relation, and a
presence check:

```json
{
  "filter": {
    "and": [
      {"field": "year", "operator": "between", "value": [2000, 2009]},
      {
        "or": [
          {"field": "contributorId", "operator": "equals", "value": "artist-7"},
          {"field": "starred", "operator": "isNotNull"}
        ]
      }
    ]
  }
}
```

## Sorting

`sort` is an ordered array of one to five objects with `field` and `direction`.
Directions are `ascending` and `descending`, and each field may appear only
once.

If `sort` is omitted, the effective sort is `id ascending`. If `id` is
explicit, it must be the last key. Otherwise the server appends `id ascending`
as a deterministic tie-breaker. Missing values always sort after present
values, for both directions.

### Sortable song fields

`id`, `title`, `album`, `artist`, `year`, `track`, `discNumber`, `duration`,
`size`, `bitRate`, `bitDepth`, `samplingRate`, `channelCount`, `playCount`,
`userRating`, `averageRating`, `bpm`, `created`, `starred`, `played`, `sortName`.

### Sortable album fields

`id`, `name`, `version`, `artist`, `year`, `songCount`, `duration`, `playCount`,
`userRating`, `created`, `starred`, `played`, `sortName`.

### Sortable artist fields

`id`, `name`, `sortName`, `albumCount`, `starred`.

A maximum-width song sort is valid:

```json
{
  "sort": [
    {"field": "artist", "direction": "ascending"},
    {"field": "album", "direction": "ascending"},
    {"field": "discNumber", "direction": "ascending"},
    {"field": "track", "direction": "ascending"},
    {"field": "id", "direction": "ascending"}
  ]
}
```

## Facet-value discovery

[`getLibraryFacetValues`](../../endpoints/getlibraryfacetvalues) lets clients
discover authorized values for portable filters without downloading and
aggregating every entity. It accepts one `entity`, one supported facet `field`,
an optional entity-specific base `filter`, `limit`, and `cursor`.

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

Facet queries do not accept `properties` or `sort`. Values use a fixed
ascending type-aware order: numeric order for integers, `false` before `true`
for booleans, and lexicographic Unicode scalar-value order for strings.

The portable facet fields are:

- Songs: `genre`, `mood`, `grouping`, `role`, `year`, `musicFolderId`,
  `contentType`, `suffix`, `explicitStatus`.
- Albums: `genre`, `mood`, `releaseType`, `recordLabel`, `year`,
  `musicFolderId`, `isCompilation`, `explicitStatus`.
- Artists: `role`, `genre`, `musicFolderId`.

Missing fields do not produce a value. Each returned count is the number of
distinct authorized entities in the filtered base set that have that value;
an entity contributes at most once to each value. `total` counts distinct
non-null facet values before pagination.

The base filter is applied exactly as supplied. Servers do not automatically
remove a rule for the requested facet field. Clients implementing disjunctive
faceting must adjust that rule themselves.

Facet continuation requests repeat structurally identical `entity`, `field`,
and `filter`, but may change `limit`. The cursor is bound to the principal,
endpoint, entity, field, filter, and fixed ordering. Values, counts, and total
are current rather than snapshot values.

## Cursors and totals

Entity browsing pagination uses forward-only opaque keyset cursors over the
effective sort tuple. A continuation request must repeat a structurally
identical `filter` and `sort`. It may change `properties` or `limit`.

```json
{
  "properties": ["album", "artist", "year"],
  "filter": {
    "and": [
      {"field": "year", "operator": "greaterThanOrEqual", "value": 2000},
      {"field": "genre", "operator": "equals", "value": "Rock"}
    ]
  },
  "sort": [
    {"field": "artist", "direction": "ascending"},
    {"field": "album", "direction": "ascending"}
  ],
  "limit": 50,
  "cursor": "opaque-next-cursor"
}
```

Servers must bind and integrity-protect a cursor against the authenticated
principal, endpoint, filter, and sort. Invalid, expired, cross-user, and
mismatched cursors fail with generic error code `0`. Cursors are not portable
between the three entity browsing endpoints or the facet endpoint.

Cursors do not create a snapshot. `total` is recomputed from the currently
authorized, filtered library on every page and may change while a client is
traversing results. Newly inserted, changed, or deleted entities can therefore
affect later pages.

The server processes each query in this order:

1. Apply authorization and visibility.
2. Apply the filter.
3. Select distinct entities.
4. Sort and apply the ID tie-breaker.
5. Apply the cursor.
6. Apply the limit.
7. Project response fields.

Authorization before filtering and counting ensures that `total` and
relationship filters cannot reveal inaccessible media.

## Result objects

The standard `subsonic-response` envelope contains one endpoint-specific
result. Its entity or value array and `total` are required. `nextCursor` is
omitted on the final page.

For example, the default request `{}` returns only song core fields in
`id ascending` order:

```json
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "librarySongs": {
      "song": [
        {"id": "song-1", "isDir": false, "title": "First"},
        {"id": "song-2", "isDir": false, "title": "Second"}
      ],
      "total": 2
    }
  }
}
```

A projected request can return selected optional fields while omitting every
other optional field:

```json
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "librarySongs": {
      "song": [
        {
          "id": "song-42",
          "isDir": false,
          "title": "Example",
          "album": "Album",
          "artist": "Artist",
          "duration": 213
        }
      ],
      "total": 237,
      "nextCursor": "opaque-next-cursor"
    }
  }
}
```

Albums use `libraryAlbums.album`; artists use `libraryArtists.artist`. Facets
use `libraryFacetValues.value`, where each item contains a typed `value` and
its `count`. A query with no matches is a successful response:

```json
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "librarySongs": {
      "song": [],
      "total": 0
    }
  }
}
```

Both rows and totals reflect the authenticated principal. For example, if a
filter matches 300 songs globally but the principal may access only 80 of
them, the response contains only those authorized songs and reports
`"total": 80`.

## Validation and security limits

Servers must reject, rather than ignore or clamp:

- unknown properties, filter fields, sort fields, or operators;
- incompatible operator/value types and heterogeneous set arrays;
- empty logical or set arrays, or a `between` value without exactly two items;
- duplicate sort fields or an explicit `id` that is not last;
- more than five logical group levels or more than 50 leaf rules;
- more than 100 values in one `in` or `notIn` rule;
- more than five explicit sort fields;
- a `limit` outside 1 through 500;
- `song` in an album projection;
- an unsupported facet entity/field pair or facet member such as `sort`;
- a cursor that is invalid, expired, or bound to another principal, endpoint,
  filter, or sort.

All fields are fixed enums mapped by the server. They are never interpreted as
raw database identifiers, expressions, or column names.

Failures use the normal failed `subsonic-response`. A missing body uses error
code `10`. Invalid queries and cursors use generic error code `0`; this
extension adds no error codes. A server that does not advertise the extension
may answer these endpoint paths with `404 Extension not supported`.
