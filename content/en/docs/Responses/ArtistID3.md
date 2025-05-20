---
title: "ArtistID3"
linkTitle: "ArtistID3 [OS]"
opensubsonic:
- Change
description: >
  An artist from ID3 tags.
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
  "starred": "2017-04-11T10:42:50.842Z"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | The id of the artist |
| `name` | `string` | **Yes** |     | The artist name. |
| `coverArt` | `string` | No |     | A covertArt id.  |
| `artistImageUrl` | `string` | No  |   | An url to an external image source. |
| `albumCount` | `int` | No |     | Artist album count.  |
| `starred` | `string` | No |     | Date the artist was starred. [ISO 8601]|
| `musicBrainzId` | `string` | No |  **Yes**   | The artist MusicBrainzID. |
| `sortName` | `string` | No |  **Yes**   | The artist sort name. |
| `roles` | Array of `string` | No | **Yes**    | The list of all roles this artist has in the library. |

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `musicBrainzId`
- `sortName`
- `roles`

**Note**: All OpenSubsonic added fields are **optionals**. But if a server support a field it **must** return it with an empty / default value when not present in it's database so that clients knows what the server supports.

**Note**: Even if some added fields may looks duplicated, it's important to still return the legacy data for compatibility reasons.
{{< /alert >}}
