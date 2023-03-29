---
title: "getVideoInfo"
linkTitle: "z getVideoInfo"
description: >
    Returns details for a video.
---

## TODO

`http://your-server/rest/getVideoInfo` Since [1.14.0](../subsonic-versions)

Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The video ID. |

Returns a `<subsonic-response>` element with a nested `<videoInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/videoInfo_example_1.xml).

