---
title: "Captions"
linkTitle: "Captions"
description: >
  Video file caption details.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "0",
  "name": "Planes 2.srt"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id" : "0",
  "name" : "Planes 2.srt"
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| ----- | ---- | ---- | ------ | ------- |
| `id` | string | **Yes** | | The ID of the caption track |
| `name` | string | No | | Subtitle track name |
