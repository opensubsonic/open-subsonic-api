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

| Field   | Type                          | Req.    | OpenS.  | Details                                                                                                                                                                                                                                                                                                                                                                         |
| ------- | ----------------------------- | ------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `index` | `integer`                     | **Yes** | **Yes** | Zero-based index into the parent `line` array this cueLine corresponds to                                                                                                                                                                                                                                                                                                       |
| `start` | `integer`                     | No      | **Yes** | Start time in milliseconds (may differ from the parent line if cues are more precise)                                                                                                                                                                                                                                                                                           |
| `end`   | `integer`                     | No      | **Yes** | End time in milliseconds                                                                                                                                                                                                                                                                                                                                                        |
| `value` | `string`                      | No      | **Yes** | Full text of the line (for validation/fallback)                                                                                                                                                                                                                                                                                                                                 |
| `role`  | `string`                      | No      | **Yes** | Standardized semantic vocal-layer classification for the cues in this cueLine. Omitted or empty for the default/main vocal layer for this `index`. Values: `bg` (background vocals), `voice1` through `voiceN` (individual voice parts — N is any positive integer with no upper bound, e.g. `voice1`, `voice100`, `voice1000`), `group` (group/chorus vocals). This field is for normalized presentation roles, not raw performer/character metadata; mapping a cueLine to a named singer or character is outside the scope of `songLyrics` version 2. When multiple cueLines share the same `index`, any default/main cueLine (empty/omitted `role`) **must** come first |
| `cue`   | Array of [`cue`](../cue)      | **Yes** | **Yes** | Ordered list of word/syllable cues                                                                                                                                                                                                                                                                                                                                              |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type added in extension [`songLyrics`](../../extensions/songlyrics) version 2.
{{< /alert >}}
