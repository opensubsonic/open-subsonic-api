---
title: "audioTrack"
linkTitle: "audioTrack"
description: >
  Video file audio tracks.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id" : "83",
  "bitRate" : 1000
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| ----- | ---- | ---- | ------ | ------- |
| `id` | string | **Yes** | | The ID of a transcoded version of the video file |
| `name` | string | | | Language Name (e.g. English, French) |
| `languageCode` | string | | | ISO 639 (2/3) code |
