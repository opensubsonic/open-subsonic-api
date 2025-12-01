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
  "containers": [ "mp4" ],
  "audioCodecs": [ "aac", "alac" ],
  "protocols": [ "http" ],
  "maxAudioChannels": 2
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `containers` | Array of string  | **Yes** | **Yes** | List of supported container format (e.g., mp3, flac, mp4). An empty array means any container. |
| `audioCodecs` | Array of string  | **Yes** | **Yes** | List of supported audio codecs. An empty array means any codec. |
| `protocols` | Array of string | **Yes** | **Yes** | The streaming protocols. Supported values are `http`, `hls`. |
| `maxAudioChannels` | integer | No | **Yes** | The maximum number of audio channels supported. |
