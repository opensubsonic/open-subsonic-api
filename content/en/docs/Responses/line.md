---
title: "line"
linkTitle: "line [OS]"
opensubsonic:
  - Addition
description: >
  One line of a song lyric.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "start": 0,
  "value": "It's bugging me"
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<line start="0">It's bugging me</line>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field   | Type     | Req.    | OpenS.  | Details                                                                                                                                                                                                                                                       |
| ------- | -------- | ------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `value` | `string` | **Yes** | **Yes** | The actual text of this line                                                                                                                                                                                                                                  |
| `start` | `number` | No      | **Yes** | The start time of the lyrics, relative to the start time of the track, in milliseconds. If this is not part of synced lyrics, `start` **must** be omitted                                                                                                     |
| `end`   | `number` | No      | **Yes** | The exact end time on the same timeline as `start`, in milliseconds. When present, `start` **must** also be present and `end` **must** be greater than or equal to `start`. Only returned by [`songLyrics`](../../extensions/songlyrics) version 2 with `enhanced=true` |

`end` is optional independently for each line. Its omission means the exact end is unknown. Clients may infer a fallback end, for example from the next line's start, but should not treat it as exact source timing. Gaps and overlapping lines are valid, as is `end == start` for an instantaneous marker. Unsynced lyrics **must** omit both `start` and `end`.

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
