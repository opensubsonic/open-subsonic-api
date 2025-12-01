---
title: "CodecProfile"
linkTitle: "CodecProfile [OS]"
opensubsonic:
- Extension
description: >
  Defines a codec profile with optional limitations.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "type": "AudioCodec",
  "name": "mp3",
  "limitations": [
    { "name": "audioBitrate", "comparison": "LessThanEqual", "value": "320000", "required": true }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `type` | string | **Yes** | **Yes** | The type of codec profile. Currently only `AudioCodec` is supported. |
| `name` | string | **Yes** | **Yes** | The name of the codec (e.g., mp3, flac). Only a single value is accepted. |
| `limitations` | [Limitation[]](../payloads/limitation) | No | **Yes** | A list of limitations for this codec. |
