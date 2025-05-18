---
title: "getVideos"
linkTitle: "getVideos"
categories:
- Browsing
description: >
    Returns all video files.
---

`http://your-server/rest/getVideos` Since [1.8.0](../../subsonic-versions)

Returns all video files.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getVideos.view?&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`videos`](../../responses/videos) element on success.

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
| `videos` | [`videos`](../../responses/videos) | **Yes** |     | The videos |
