---
title: "Captions"
linkTitle: "Captions"
description: >
  Video file caption details.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id" : "0",
  "bitRate" : "Planes 2.srt"
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| ----- | ---- | ---- | ------ | ------- |
| `id` | string | **Yes** | | The ID of a transcoded version of the video file |
| `name` | string | | | Subtitle track name |
