---
title: "getLibrarySongs"
linkTitle: "getLibrarySongs [OS]"
OpenSubsonic:
  - Extension
categories:
  - Browsing
description: >
  Returns a projected, filtered, sorted page of library songs.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `extendedLibrary` (As returned by
[`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`POST http://your-server/rest/getLibrarySongs?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json`

Returns a page of distinct, authorized [`Child`](../../responses/child)
entities. See [Extended Library](../../extensions/extendedlibrary) for the
normative projection, recursive filter, sorting, cursor, authorization, and
validation rules.

This endpoint requires `Content-Type: application/json`, `f=json`, and a JSON
body. It has no GET, form-POST, or XML variant. `{}` requests the first page,
using `id ascending`, a limit of 100, and core fields only.

### Request body

| Field | Required | Default | Details |
| --- | --- | --- | --- |
| `properties` | No | Core fields | Optional [`Child`](../../responses/child) fields from the version 1 song property catalog. |
| `filter` | No | No filter | A recursive song filter. |
| `sort` | No | `id ascending` | One to five unique song sort keys. |
| `limit` | No | `100` | Integer from 1 through 500. |
| `cursor` | No | First page | Opaque continuation token. |

```bash
curl -X POST \
  -H 'Content-Type: application/json' \
  'http://your-server/rest/getLibrarySongs?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json' \
  -d '{
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
    "limit": 100
  }'
```

### Result

A [`subsonic-response`](../../responses/subsonic-response) with
`librarySongs`. `song` and `total` are required. `nextCursor` is present only
when another page is available.

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
          "duration": 213,
          "coverArt": "cover-8"
        }
      ],
      "total": 237,
      "nextCursor": "opaque-next-cursor"
    }
  }
}
```

Only requested optional fields appear in this example. Requested metadata may
be omitted when unavailable.

### Errors

A missing body fails with code `10`. Invalid properties, filters, sorts,
limits, or cursors fail with code `0`. An unsupported extension may return
`404 Extension not supported`.

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new extension endpoint.
{{< /alert >}}
