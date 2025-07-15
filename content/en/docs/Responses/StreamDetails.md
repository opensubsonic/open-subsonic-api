---
title: "StreamDetails"
linkTitle: "StreamDetails [OS]"
opensubsonic:
- Extension
description: >
  Provides details about a media stream.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "protocol": "http",
  "container": "flac",
  "codec": "flac",
  "audioChannels": 6,
  "audioBitrate": 3000000,
  "audioProfile": "",
  "audioSamplerate": 96000,
  "audioBitdepth": 24
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `protocol` | string | **Yes** | **Yes** | The streaming protocol. Can be `http` or `hls`. |
| `container` | string | **Yes** | **Yes** | The container format. |
| `codec` | string | **Yes** | **Yes** | The audio codec. |
| `audioChannels` | integer | No | **Yes** | The number of audio channels. |
| `audioBitrate` | integer | No | **Yes** | The audio bitrate. |
| `audioProfile` | string | No | **Yes** | The audio profile. |
| `audioSamplerate` | integer | No | **Yes** | The audio sample rate. |
| `audioBitdepth` | integer | No | **Yes** | The audio bit depth. |
