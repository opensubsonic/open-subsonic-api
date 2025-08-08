---
title: "DirectPlayProfile"
linkTitle: "DirectPlayProfile [OS]"
opensubsonic:
- Extension
description: >
  Defines a direct play profile.
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
| `container` | string | **Yes** | **Yes** | The container format (e.g., mp3, flac, mp4). |
| `audioCodec` | string | **Yes** | **Yes** | Comma-separated list of supported audio codecs. |
| `protocol` | string | **Yes** | **Yes** | The streaming protocol. Can be `http` or `hls`. |
| `maxAudioChannels` | integer | No | **Yes** | The maximum number of audio channels supported. |
