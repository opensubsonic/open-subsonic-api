---
title: "TranscodingProfile"
linkTitle: "TranscodingProfile [OS]"
opensubsonic:
- Extension
description: >
  Defines a transcoding profile.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "container": "mp3",
  "audioCodec": "mp3",
  "protocol": "http",
  "maxAudioChannels": 2
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `container` | string | **Yes** | **Yes** | The container format (e.g., mp3, flac). |
| `audioCodec` | string | **Yes** | **Yes** | The target audio codec for transcoding. |
| `protocol` | string | **Yes** | **Yes** | The streaming protocol. Can be `http` or `hls`. |
| `maxAudioChannels` | integer | No | **Yes** | The maximum number of audio channels for the transcoded stream. |
