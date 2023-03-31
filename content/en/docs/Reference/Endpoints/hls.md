---
title: "hls"
linkTitle: "hls"
description: >
    Downloads a given media file.
---

`http://your-server/rest/hls.m3u8` Since [1.8.0](../../subsonic-versions)

Creates an HLS ([HTTP Live Streaming](http://en.wikipedia.org/wiki/HTTP_Live_Streaming)) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports **adaptive bitrate streaming**, see the `bitRate` parameter.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |   | A string which uniquely identifies the media file to stream.|
| `bitRate` | No  | |    | If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a **variant playlist**, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since [1.9.0](../../subsonic-versions) you may explicitly request a certain width (480) and height (360) like so: `bitRate=1000@480x360` |
| `audioTrack` | No  | |    | The ID of the audio track to use. See[`getVideoInfo`](../getvideoinfo) for how to get the list of available audio tracks for a video. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/hls.m3u8?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
