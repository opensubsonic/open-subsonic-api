---
title: "ReplayGain"
linkTitle: "ReplayGain [OS]"
opensubsonic:
- Addition
description: >
  The replay gain data of a song.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
    "trackGain": 0.1,
    "albumGain": 1.1,
    "trackPeak": 9.2,
    "albumPeak": 0,
    "baseGain": 0,
    "fallbackGain": -8.1
}
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `trackGain` | `number` | No | **Yes**    | The track replay gain value. (In Db) |
| `albumGain` | `number` | No | **Yes**    | The album replay gain value. (In Db) |
| `trackPeak` | `number` | No | **Yes**    | The track peak value. (Must be positive) |
| `albumPeak` | `number` | No | **Yes**    | The album peak value. (Must be positive) |
| `baseGain` | `number` | No | **Yes**    | The base gain value. (In Db) (Ogg Opus Output Gain for example) |
| `fallbackGain` | `number` | No | **Yes**    | An optional fallback gain that clients should apply when the corresponding gain value is missing. (Can be computed from the tracks or exposed as an user setting.) |

**Note**: If the data is not present the field must be ommited in the answer. (But the replayGain field on [`Child`](../child) must always be present)

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
