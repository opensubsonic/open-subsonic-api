---
title: "stream"
linkTitle: "stream [OS]"
opensubsonic:
- Clarification
- Addition
- Extension
categories:
- Media retrieval
description: >
  Streams a given media file.
---

`http://your-server/rest/stream` Since [1.0.0](../../subsonic-versions)

Streams a given media file.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** | |     | A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory. |
| `maxBitRate` | No |  |     | (Since [1.2.0](../../subsonic-versions)) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed. |
| `format` | No |  |     | (Since [1.6.0](../../subsonic-versions)) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with [1.9.0](../../subsonic-versions) you can use the special value "raw" to disable transcoding. |
| `timeOffset` | No| No / **Yes**   |     | By default only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the media. The [`Transcode Offset`](../../extensions/transcodeoffset/) extension enables the parameter to music too. |
| `size` | No  |   |   | (Since [1.6.0](../../subsonic-versions)) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480". |
| `estimateContentLength` | No |  | false | (Since [1.8.0](../../subsonic-versions)). If set to "true", the *Content-Length* HTTP header will be set to an estimated value for transcoded or downsampled media. |
| `converted` | No  | | false | (Since [1.14.0](../../subsonic-versions)) Only applicable to video streaming. Servers can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/stream.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").

{{< alert color="warning" title="OpenSubsonic" >}}
OpenSubsonic servers **must not** count access to this endpoint as a play and increase playcount. Clients can use the [`Scrobble`](../scrobble) endpoint to indicate that a media is played ensuring proper data in all cases.

If the server support the [`Transcode Offset`](../../extensions/transcodeoffset/) extension, then it must accept the `timeOffset` parameter for music too.

{{< /alert >}}
