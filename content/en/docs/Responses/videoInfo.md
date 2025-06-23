---
title: "videoInfo"
linkTitle: "videoInfo"
description: >
  videoInfo.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id" : "83"
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| ----- | ---- | ---- | ------ | ------- |
| `id` | string | **Yes** | | The ID of the video file |
| `captions` | Array of [`Captions`](../captions) | | | |
| `audioTrack` | Array of [`AudioTrack`](../audioTrack) | | | |
| `conversion` | Array of [`VideoConversion`](../videoConversion) | | | |
