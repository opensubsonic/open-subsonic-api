---
title: "cueLine"
linkTitle: "cueLine [OS]"
opensubsonic:
  - Addition
description: >
  Word/syllable-level timing data for a lyrics line.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "index": 0,
  "start": 2747,
  "end": 6214,
  "value": "눈을 뜬 순간",
  "cue": [
    { "start": 2747, "end": 3018, "value": "눈" },
    { "start": 3018, "end": 3179, "value": "을" },
    { "start": 3179, "end": 3582, "value": " " },
    { "start": 3582, "end": 4100, "value": "뜬" },
    { "start": 4100, "end": 4500, "value": " " },
    { "start": 4500, "end": 5200, "value": "순" },
    { "start": 5200, "end": 6214, "value": "간" }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<cueLine index="0" start="2747" end="6214" value="눈을 뜬 순간">
  <cue start="2747" end="3018">눈</cue>
  <cue start="3018" end="3179">을</cue>
  <cue start="3179" end="3582"> </cue>
  <cue start="3582" end="4100">뜬</cue>
  <cue start="4100" end="4500"> </cue>
  <cue start="4500" end="5200">순</cue>
  <cue start="5200" end="6214">간</cue>
</cueLine>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

##### Example with agent attribution

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "index": 0,
  "start": 1000,
  "end": 4000,
  "value": "You and I",
  "agentId": "lead",
  "cue": [
    { "start": 1000, "end": 1800, "value": "You " },
    { "start": 1800, "end": 2400, "value": "and " },
    { "start": 2400, "end": 3200, "value": "I" }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<cueLine index="0" start="1000" end="4000" value="You and I" agentId="lead">
  <cue start="1000" end="1800">You </cue>
  <cue start="1800" end="2400">and </cue>
  <cue start="2400" end="3200">I</cue>
</cueLine>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field     | Type                          | Req.    | OpenS.  | Details                                                                                                                                                                                                                                                                                                                                                      |
| --------- | ----------------------------- | ------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `index`   | `integer`                     | **Yes** | **Yes** | Zero-based index into the parent `line` array this cueLine corresponds to                                                                                                                                                                                                                                                                                    |
| `start`   | `integer`                     | No      | **Yes** | Start time in milliseconds (may differ from the parent line if cues are more precise)                                                                                                                                                                                                                                                                        |
| `end`     | `integer`                     | No      | **Yes** | End time in milliseconds                                                                                                                                                                                                                                                                                                                                     |
| `value`   | `string`                      | No      | **Yes** | Full text of the line (for validation/fallback)                                                                                                                                                                                                                                                                                                              |
| `agentId` | `string`                      | No      | **Yes** | Opaque identifier referencing an [`agent`](../agent) in the same [`structuredLyrics`](../structuredlyrics) entry. If the parent `structuredLyrics` entry includes `agents`, every cueLine in that entry **must** include `agentId`, and the value **must** match exactly one `agents[].id` in that entry. If the parent entry does not include `agents`, cueLines **must not** include `agentId`. When multiple cueLines share the same `index`, the cueLine whose referenced agent has `role: "main"` **must** come first |
| `cue`     | Array of [`cue`](../cue)      | **Yes** | **Yes** | Ordered list of word/syllable cues                                                                                                                                                                                                                                                                                                                           |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type added in extension [`songLyrics`](../../extensions/songlyrics) version 2.
{{< /alert >}}
