---
title: "getCaptions"
linkTitle: "getCaptions"
categories:
- Media retrieval
description: >
    Returns captions (subtitles) for a video.
---

`http://your-server/rest/getCaptions` Since [1.14.0](../../subsonic-versions)

Returns captions (subtitles) for a video. Use [`getVideoInfo`](../getvideoinfo) to get a list of available captions.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** | |     | The ID of the video. |
| `format` | No  |  |   | Preferred captions format ("srt" or "vtt"). |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getCaptions.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

Returns the raw video captions.
