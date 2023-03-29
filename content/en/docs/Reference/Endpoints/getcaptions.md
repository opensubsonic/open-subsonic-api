---
title: "getCaptions"
linkTitle: "z getCaptions"
description: >
    Returns captions (subtitles) for a video.
---

## TODO

`http://your-server/rest/getCaptions` Since [1.14.0](../subsonic-versions)

Returns captions (subtitles) for a video. Use `getVideoInfo` to get a list of available captions.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the video. |
| `format` | No  |     | Preferred captions format ("srt" or "vtt"). |

Returns the raw video captions.
