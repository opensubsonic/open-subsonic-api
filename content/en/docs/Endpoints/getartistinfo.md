---
title: "getArtistInfo"
linkTitle: "getArtistInfo"
categories:
- Browsing
description: >
    Returns artist info.
---

`http://your-server/rest/getArtistInfo` Since [1.11.0](../../subsonic-versions)

Returns artist info with biography, image URLs and similar artists, using data from [last.fm](http://last.fm).

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |    | The artist, album or song ID.  |
| `count` | No  || 20  | Max number of similar artists to return. |
| `includeNotPresent` | No  | | false | Whether to return artists that are not present in the media library. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getArtistInfo.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`artistInfo`](../../responses/artistinfo) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "artistInfo": {
      "biography": "Empty biography",
      "musicBrainzId": "1",
      "smallImageUrl": "http://localhost:8989/play/art/f20070e8e11611cc53542a38801d60fa/artist/2/thumb34.jpg",
      "mediumImageUrl": "http://localhost:8989/play/art/2b9b6c057cd4bf21089ce7572e7792b6/artist/2/thumb64.jpg",
      "largeImageUrl": "http://localhost:8989/play/art/e18287c23a75e263b64c31b3d64c1944/artist/2/thumb174.jpg"
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "artistInfo": {
      "biography": "Empty biography",
      "musicBrainzId": "1",
      "smallImageUrl": "http://localhost:8989/play/art/f20070e8e11611cc53542a38801d60fa/artist/2/thumb34.jpg",
      "mediumImageUrl": "http://localhost:8989/play/art/2b9b6c057cd4bf21089ce7572e7792b6/artist/2/thumb64.jpg",
      "largeImageUrl": "http://localhost:8989/play/art/e18287c23a75e263b64c31b3d64c1944/artist/2/thumb174.jpg"
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `artistInfo` | [`artistInfo`](../../responses/artistinfo) | **Yes** |     | The album info |
