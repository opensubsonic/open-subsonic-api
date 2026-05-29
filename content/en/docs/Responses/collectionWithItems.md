---
title: "collectionWithItems"
linkTitle: "collectionWithItems [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  A collection with items, as returned by the [getCollection](../../endpoints/getcollection) endpoint.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="Collection" lang="json">}}
{
  "id": "800000075",
  "name": "testcollection",
  "owner": "user",
  "public": true,
  "created": "2026-03-16T03:18:41+00:00",
  "changed": "2026-03-16T03:18:41+00:00",
  "itemCount": 3,
  "readonly": true,
  "validUntil": "2026-03-23T03:18:41+00:00",
  "items": [
    {
      "song": {
        "id": "300000060",
        "parent": "200000002",
        "title": "BrownSmoke",
        "isDir": false,
        "isVideo": false,
        "type": "music",
        "albumId": "200000002",
        "album": "Colorsmoke EP",
        "artistId": "100000002",
        "artist": "Synthetic",
        "coverArt": "300000060",
        "duration": 304,
        "bitRate": 20,
        "bitDepth": 16,
        "samplingRate": 44100,
        "channelCount": 2,
        "userRating": 5,
        "averageRating": 5,
        "track": 4,
        "year": 2007,
        "genre": "Electronic",
        "size": 792375,
        "discNumber": 1,
        "suffix": "wma",
        "contentType": "audio/x-ms-wma",
        "path": "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007/04-Synthetic_-_BrownSmokeYSBM20k22khS.wma"
      }
    },
    {
      "album": {
        "id": "200000021",
        "parent": "100000036",
        "album": "Forget and Remember",
        "title": "Forget and Remember",
        "name": "Forget and Remember",
        "isDir": true,
        "coverArt": "al-200000021",
        "songCount": 20,
        "created": "2021-07-22T02:09:31+00:00",
        "duration": 4248,
        "playCount": 0,
        "artistId": "100000036",
        "artist": "Comfort Fit",
        "year": 2005,
        "genre": "Hip-Hop"
      }
    },
    {
      "genre": {
        "value": "vaporwave",
        "songCount": 6,
        "albumCount": 1
      }
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | Id of the collection |
| `name` | `string` | **Yes** |     | Name of the collection |
| `comment` | `string` | No|     | A commnet |
| `owner` | `string` | No |     | Owner of the collection |
| `public` | `boolean` | No|     | Is the collection public |
| `itemCount` | `int` | **Yes** |     | number of items |
| `created` | `string` | **Yes** |     | Creation date [ISO 8601] |
| `changed` | `string` | **Yes** |     | Last changed date [ISO 8601] |
| `allowedUser` | Array of `string` | No |     | A list of allowed usernames |
| `readonly` | `boolean` | No |  | If true the collection cannot be edited by the current user |
| `validUntil` | `string` | No |  | Date the collection contents are considered valid until [ISO 8601] |
| `items` | Array of [`collectionItem`](../collectionitem) | **Yes** |     | The list of items |

When `readonly` is true, clients should hide or disable UI actions that modify the collection. This is useful for server-generated collections like smart collections, recommendations, or curated system lists. The value should reflect the current authenticated user's access level. When omitted, clients should assume the collection is editable (`false`).

The `validUntil` field indicates how long the collection contents can be treated as fresh, inspired by HTTP caching semantics. Clients may use this to determine when to refresh the collection data. An empty or absent value indicates no caching guarantee; clients should refresh the collection data on each access.
