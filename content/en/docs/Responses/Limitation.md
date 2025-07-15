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
  "name": "audioBitrate",
  "comparison": "LessThanEqual",
  "value": "320000",
  "required": true
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | string | **Yes** | | The name of the limitation. Can be `audioChannels`, `audioBitrate`, `audioProfile`, `audioSamplerate`, or `audioBitdepth`. |
| `comparison` | string | **Yes** | | The comparison operator. Can be `Equals`, `NotEquals`, `LessThanEqual`, `GreaterThanEqual`, `EqualsAny`, or `NotEqualsAny`. |
| `value` | string | **Yes** | | The value to compare against. For `EqualsAny` and `NotEqualsAny`, this should be a pipe-separated (`\|`) list of values (e.g.,  `44100\|48000`). |
| `required` | boolean | **Yes** | | Whether this limitation must be met. |
