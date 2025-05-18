---
title: "unstar"
linkTitle: "unstar"
categories:
- Media annotation
description: >
    Attaches a star to a song, album or artist.
---

`http://your-server/rest/unstar` Since [1.8.0](../../subsonic-versions)

Removes a star to a song, album or artist.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | No  |  |    | The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed. |
| `albumId` | No  |  |    | The ID of an album to unstar. Use this rather than `id` if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed. |
| `artistId` | No  |  |    | The ID of an artist to unstar. Use this rather than `id` if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/unstar.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}
