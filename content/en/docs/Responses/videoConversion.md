---
title: "videoConversion"
linkTitle: "videoConversion"
description: >
  Transcoded video files.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "37",
  "bitRate": 1000,
  "audioTrackId": 1
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id" : "37",
  "bitRate" : 1000,
  "audioTrackId" : 1
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| ----- | ---- | ---- | ------ | ------- |
| `id` | string | **Yes** | | The ID of a transcoded version of the video file |
| `bitRate` | int | No | | File bitrate, in Kbps |
| `audioTrackId` | int | No | | The ID of the audio track this version carries |
