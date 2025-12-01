---
title: "Limitation"
linkTitle: "Limitation [OS]"
opensubsonic:
- Extension
description: >
  Defines a limitation for a codec profile.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "name": "audioSamplerate",
  "comparison": "Equals",
  "values": [ "44100", "48000" ],
  "required": true
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | string | **Yes** | | The name of the limitation. Can be `audioChannels`, `audioBitrate`, `audioProfile`, `audioSamplerate`, or `audioBitdepth`. |
| `comparison` | string | **Yes** | | The comparison operator. Can be `Equals`, `NotEquals`, `LessThanEqual`, `GreaterThanEqual`. |
| `values` | string | **Yes** | | The values to compare against. For `LessThanEqual` and `GreaterThanEqual`, only the first value will be used. |
| `required` | boolean | **Yes** | | Whether this limitation must be met. |
