---
title: "getVideoInfo"
linkTitle: "getVideoInfo"
categories:
- Browsing
description: >
    Returns details for a video.
---

`http://your-server/rest/getVideoInfo` Since [1.14.0](../../subsonic-versions)

Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |   | The video ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getVideoInfo.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`videoInfo`](../../responses/videoinfo) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `videoInfo` | [`videoInfo`](../../responses/videoinfo) | **Yes** |     | The song |
