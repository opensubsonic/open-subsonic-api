---
title: "ArtistID3"
linkTitle: "ArtistID3"
description: >
  An artist from ID3 tags.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
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
| `id` | `string` | **Yes** |     | The id of the arist |
| `name` | `string` | **Yes** |     | The artist name. |
| `coverArt` | `string` | No |     | A covertArt id.  |
| `artistImageUrl` | `string` | No  |   | An url to an external image source. |
| `albumCount` | `int` | No |     | Artist album count.  |
| `starred` | `string` | No |     | Date the artist was starred. [ISO 8601]|
