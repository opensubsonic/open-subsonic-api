---
title: "ArtistWithAlbumsID3"
linkTitle: "ArtistWithAlbumsID3 [OS]"
description: >
  An extension of [`ArtistID3`](../artistid3) with [`AlbumID3`](../albumid3)
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "37ec820ca7193e17040c98f7da7c4b51",
  "name": "2 Mello",
  "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
  "albumCount": 1,
  "userRating": 5,
  "artistImageUrl": "https://demo.org/image.jpg",
  "starred": "2017-04-11T10:42:50.842Z",
  "musicBrainzId": "189002e7-3285-4e2e-92a3-7f6c30d407a2",
  "sortName": "Mello (2)",
  "roles": [
    "artist",
    "albumartist",
    "composer"
  ],
  "album": [
    {
      "id": "200000002",
      "parent": "100000002",
      "album": "Colorsmoke EP",
      "title": "Colorsmoke EP",
      "name": "Colorsmoke EP",
      "isDir": true,
      "coverArt": "al-200000002",
      "songCount": 12,
      "created": "2021-02-23T04:24:48+00:00",
      "duration": 4568,
      "playCount": 1,
      "artistId": "100000002",
      "artist": "Synthetic",
      "year": 2007,
      "genre": "Electronic",
      "userRating": 5,
      "averageRating": 3,
      "starred": "2021-02-22T05:51:53Z"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id": "37ec820ca7193e17040c98f7da7c4b51",
  "name": "2 Mello",
  "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
  "albumCount": 1,
  "userRating": 5,
  "artistImageUrl": "https://demo.org/image.jpg",
  "starred": "2017-04-11T10:42:50.842Z",
  "album": [
    {
      "id": "200000002",
      "parent": "100000002",
      "album": "Colorsmoke EP",
      "title": "Colorsmoke EP",
      "name": "Colorsmoke EP",
      "isDir": true,
      "coverArt": "al-200000002",
      "songCount": 12,
      "created": "2021-02-23T04:24:48+00:00",
      "duration": 4568,
      "playCount": 1,
      "artistId": "100000002",
      "artist": "Synthetic",
      "year": 2007,
      "genre": "Electronic",
      "userRating": 5,
      "averageRating": 3,
      "starred": "2021-02-22T05:51:53Z"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field            | Type                               | Req.    | OpenS.  | Details                                                |
| ---------------- | ---------------------------------- | ------- | ------- | ------------------------------------------------------ |
| `id`             | `string`                           | **Yes** |         | The id of the artist                                   |
| `name`           | `string`                           | **Yes** |         | The artist name.                                       |
| `coverArt`       | `string`                           | No      |         | A covertArt id.                                        |
| `artistImageUrl` | `string`                           | No      |         | An url to an external image source.                    |
| `albumCount`     | `int`                              | **Yes** |         | Artist album count.                                    |
| `starred`        | `string`                           | No      |         | Date the artist was starred. [ISO 8601]                |
| `album`          | Array of [`AlbumID3`](../albumid3) | No      |         | Artist albums                                          |
| `musicBrainzId`  | `string`                           | No      | **Yes** | The artist MusicBrainzID.                              |
| `sortName`       | `string`                           | No      | **Yes** | The artist sort name.                                  |
| `roles`          | Array of `string`                  | No      | **Yes** | The list of all roles this artist has in the library.  |

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `musicBrainzId`
- `sortName`
- `roles`

**Note**: All OpenSubsonic added fields are **optionals**. But if a server support a field it **must** return it with an empty / default value when not present in it's database so that clients knows what the server supports.

**Note**: Even if some added fields may looks duplicated, it's important to still return the legacy data for compatibility reasons.
{{< /alert >}}
