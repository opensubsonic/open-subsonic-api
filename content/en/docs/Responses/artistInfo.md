---
title: "artistInfo"
linkTitle: "artistInfo"
description: >
  Artist info.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "biography": "Empty biography",
  "musicBrainzId": "1",
  "smallImageUrl": "http://localhost:8989/play/art/f20070e8e11611cc53542a38801d60fa/artist/2/thumb34.jpg",
  "mediumImageUrl": "http://localhost:8989/play/art/2b9b6c057cd4bf21089ce7572e7792b6/artist/2/thumb64.jpg",
  "largeImageUrl": "http://localhost:8989/play/art/e18287c23a75e263b64c31b3d64c1944/artist/2/thumb174.jpg"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "biography": "Empty biography",
  "musicBrainzId": "1",
  "smallImageUrl": "http://localhost:8989/play/art/f20070e8e11611cc53542a38801d60fa/artist/2/thumb34.jpg",
  "mediumImageUrl": "http://localhost:8989/play/art/2b9b6c057cd4bf21089ce7572e7792b6/artist/2/thumb64.jpg",
  "largeImageUrl": "http://localhost:8989/play/art/e18287c23a75e263b64c31b3d64c1944/artist/2/thumb174.jpg"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `biography` | `string` | No |     | Artist biography |
| `musicBrainzId` | `string` | No |     | Artist musicBrainzId |
| `lastFmUrl` | `string` | No|     | Artist lastFmUrl |
| `smallImageUrl` | `string` | No |     | Artist smallImageUrl |
| `mediumImageUrl` | `string` | No|     | Artist mediumImageUrl|
| `largeImageUrl` | `string` | No |     | Artist largeImageUrl |
| `similarArtist` | Array of [`artist`](../artist) | No |     | Similar Artists|
