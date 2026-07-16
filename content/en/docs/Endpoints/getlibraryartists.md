---
title: "getLibraryArtists"
linkTitle: "getLibraryArtists [OS]"
OpenSubsonic:
  - Extension
categories:
  - Browsing
description: >
  Returns a projected, filtered, sorted page of library artists.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `extendedLibrary` (As returned by
[`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`POST http://your-server/rest/getLibraryArtists?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json`

Returns a page of distinct, authorized [`ArtistID3`](../../responses/artistid3)
entities. See [Extended Library](../../extensions/extendedlibrary) for the
normative projection, recursive filter, sorting, cursor, relationship,
authorization, and validation rules.

This endpoint requires `Content-Type: application/json`, `f=json`, and a JSON
body. It has no GET, form-POST, or XML variant. `{}` requests the first page,
using `id ascending`, a limit of 100, and core fields only.

### Request body

| Field | Required | Default | Details |
| --- | --- | --- | --- |
| `properties` | No | Core fields | Optional [`ArtistID3`](../../responses/artistid3) fields from the version 1 artist property catalog. |
| `filter` | No | No filter | A recursive artist filter. |
| `sort` | No | `id ascending` | One to five unique artist sort keys. |
| `limit` | No | `100` | Integer from 1 through 500. |
| `cursor` | No | First page | Opaque continuation token. |

```json
{
  "properties": ["albumCount", "sortName", "roles"],
  "filter": {
    "or": [
      {"field": "role", "operator": "equals", "value": "composer"},
      {"field": "songId", "operator": "equals", "value": "song-42"}
    ]
  },
  "sort": [
    {"field": "sortName", "direction": "ascending"},
    {"field": "name", "direction": "ascending"}
  ],
  "limit": 100
}
```

### Result

A [`subsonic-response`](../../responses/subsonic-response) with
`libraryArtists`. `artist` and `total` are required. `nextCursor` is present
only when another page is available.

```json
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "libraryArtists": {
      "artist": [
        {
          "id": "artist-9",
          "name": "Example Artist",
          "albumCount": 4,
          "sortName": "Artist, Example",
          "roles": ["artist", "composer"]
        }
      ],
      "total": 1
    }
  }
}
```

### Errors

A missing body fails with code `10`. Invalid properties, filters, sorts,
limits, or cursors fail with code `0`. An unsupported extension may return
`404 Extension not supported`.

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new extension endpoint.
{{< /alert >}}
