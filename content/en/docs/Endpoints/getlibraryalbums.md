---
title: "getLibraryAlbums"
linkTitle: "getLibraryAlbums [OS]"
OpenSubsonic:
  - Extension
categories:
  - Browsing
description: >
  Returns a projected, filtered, sorted page of library albums.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `extendedLibrary` (As returned by
[`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`POST http://your-server/rest/getLibraryAlbums?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json`

Returns a page of distinct, authorized [`AlbumID3`](../../responses/albumid3)
entities. See [Extended Library](../../extensions/extendedlibrary) for the
normative projection, recursive filter, sorting, cursor, relationship,
authorization, and validation rules.

This endpoint requires `Content-Type: application/json`, `f=json`, and a JSON
body. It has no GET, form-POST, or XML variant. `{}` requests the first page,
using `id ascending`, a limit of 100, and core fields only.

### Request body

| Field | Required | Default | Details |
| --- | --- | --- | --- |
| `properties` | No | Core fields | Optional [`AlbumID3`](../../responses/albumid3) fields from the version 1 album property catalog. `song` is invalid. |
| `filter` | No | No filter | A recursive album filter. |
| `sort` | No | `id ascending` | One to five unique album sort keys. |
| `limit` | No | `100` | Integer from 1 through 500. |
| `cursor` | No | First page | Opaque continuation token. |

```json
{
  "properties": ["artist", "year", "genres", "releaseTypes"],
  "filter": {
    "and": [
      {"field": "year", "operator": "between", "value": [1990, 1999]},
      {"field": "musicFolderId", "operator": "equals", "value": "folder-1"}
    ]
  },
  "sort": [
    {"field": "artist", "direction": "ascending"},
    {"field": "year", "direction": "descending"}
  ],
  "limit": 100
}
```

### Result

A [`subsonic-response`](../../responses/subsonic-response) with
`libraryAlbums`. `album` and `total` are required. `nextCursor` is present only
when another page is available.

```json
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "libraryAlbums": {
      "album": [
        {
          "id": "album-7",
          "name": "Example Album",
          "songCount": 10,
          "duration": 2580,
          "created": "2025-04-20T12:00:00Z",
          "artist": "Example Artist",
          "year": 1996
        }
      ],
      "total": 1
    }
  }
}
```

The required core fields always appear. `song` is never returned by this
endpoint.

### Errors

A missing body fails with code `10`. Invalid properties, filters, sorts,
limits, or cursors fail with code `0`. An unsupported extension may return
`404 Extension not supported`.

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new extension endpoint.
{{< /alert >}}
