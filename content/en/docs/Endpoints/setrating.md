---
title: "setRating"
linkTitle: "setRating"
categories:
- Media annotation
description: >
  Sets the rating for a music file.
---

`http://your-server/rest/setRating` Since [1.6.0](../../subsonic-versions)

Sets the rating for a music file.

Servers implementing the [ratingID3 extension](../Extensions/ratingID3.md) additionally support setting ratings for ArtistID3 and AlbumID3.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |   |  | A string which uniquely identifies the file (song) or folder (album/artist) to rate. |
| `artistId` | No | **Yes** |   | The ID of an artistID3 to star. Multiple parameters allowed. Supported by servers implementing the ratingID3 extension. |
| `albumId` | No | **Yes** |   | The ID of an albumID3 to star. Multiple parameters allowed. Supported by servers implementing the ratingID3 extension. |
| `rating` | **Yes** |  |   | The rating between 1 and 5 (inclusive), or 0 to remove the rating. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/setRating.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
