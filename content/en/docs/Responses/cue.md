---
title: "cue"
linkTitle: "cue [OS]"
opensubsonic:
  - Addition
description: >
  A word or syllable cue within a cueLine.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "start": 2747,
  "end": 3018,
  "value": "눈"
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<cue start="2747" end="3018">눈</cue>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field   | Type      | Req.    | OpenS.  | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ------- | --------- | ------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `start` | `integer` | **Yes** | **Yes** | Start time in milliseconds                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `end`   | `integer` | No      | **Yes** | End time in milliseconds. Within a [`cueLine`](../cueline), `end` **must** be either present on **all** cues or **none**. When the source provides partial end times, servers **must** fill missing values (e.g., using the next cue's `start`, or the cueLine's `end` for the final cue). When no cues have end times (e.g., Enhanced LRC with start-only timing), `end` is omitted from all cues |
| `value` | `string`  | **Yes** | **Yes** | The text of this word or syllable                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type added in extension [`songLyrics`](../../extensions/songlyrics) version 2.
{{< /alert >}}
