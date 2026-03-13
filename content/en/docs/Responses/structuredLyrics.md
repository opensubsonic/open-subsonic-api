---
title: "structuredLyrics"
linkTitle: "structuredLyrics [OS]"
opensubsonic:
  - Addition
description: >
  Structured lyrics.
---

### Version 1 (line-level)

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "displayArtist": "Muse",
  "displayTitle": "Hysteria",
  "lang": "xxx",
  "offset": -100,
  "synced": true,
  "line": [
    {
      "start": 0,
      "value": "It's bugging me"
    },
    {
      "start": 2000,
      "value": "Grating me"
    },
    {
      "start": 3001,
      "value": "And twisting me around..."
    }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<structuredLyrics displayArtist="Muse" displayTitle="Hysteria" lang="xxx" offset="-100" synced="true">
  <line start="0">It's bugging me</line>
  <line start="2000">Grating me</line>
  <line start="3001">And twisting me around...</line>
</structuredLyrics>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

### Version 2 (enhanced — word/syllable-level with kind)

When `enhanced=true` is passed to [`getLyricsBySongId`](../../endpoints/getlyricsbysongid), the response includes additional fields: `kind` to classify lyric tracks, and `cueLine` arrays with word/syllable-level timing.

Each `structuredLyrics` entry is self-contained. Clients should treat tracks with different `kind` values, including `main`, as independent layers rather than assuming 1:1 line or cue alignment between them.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "kind": "main",
  "lang": "ko",
  "synced": true,
  "line": [
    { "start": 2747, "value": "눈을 뜬 순간" },
    { "start": 6214, "value": "모든 게 달라졌어" }
  ],
  "cueLine": [
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
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<structuredLyrics kind="main" lang="ko" synced="true">
  <line start="2747">눈을 뜬 순간</line>
  <line start="6214">모든 게 달라졌어</line>
  <cueLine index="0" start="2747" end="6214" value="눈을 뜬 순간">
    <cue start="2747" end="3018">눈</cue>
    <cue start="3018" end="3179">을</cue>
    <cue start="3179" end="3582"> </cue>
    <cue start="3582" end="4100">뜬</cue>
    <cue start="4100" end="4500"> </cue>
    <cue start="4500" end="5200">순</cue>
    <cue start="5200" end="6214">간</cue>
  </cueLine>
</structuredLyrics>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

### Fields

| Field           | Type                                 | Req.    | OpenS.  | Details                                                                                                                                                                |
| --------------- | ------------------------------------ | ------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `lang`          | `string`                             | **Yes** | **Yes** | The lyrics language (ideally ISO 639). If the language is unknown (e.g. lrc file), the server **must** return `und` (ISO standard) or `xxx` (common value for taggers) |
| `synced`        | `boolean`                            | **Yes** | **Yes** | True if the lyrics are synced, false otherwise                                                                                                                         |
| `line`          | Array of [`line`](../line)           | **Yes** | **Yes** | The actual lyrics. Ordered by start time (synced) or appearance order (unsynced)                                                                                       |
| `displayArtist` | `string`                             | No      | **Yes** | The artist name to display. This could be the localized name, or any other value                                                                                       |
| `displayTitle`  | `string`                             | No      | **Yes** | The title to display. This could be the song title (localized), or any other value                                                                                     |
| `offset`        | `number`                             | No      | **Yes** | The offset to apply to all lyrics, in milliseconds. Positive means lyrics appear sooner, negative means later. If not included, the offset **must** be assumed to be 0 |
| `kind`          | `string`                             | No      | **Yes** | The primary lyric-layer classification for this `structuredLyrics` entry. One of: `main` (primary vocals for this entry, default if omitted), `translation` (a translation of another lyric layer into another language), `pronunciation` (a phonetic/romanized rendering, e.g. romaji for Japanese, pinyin for Chinese). Tracks are independent across `kind` values; clients should not assume 1:1 line or cue alignment between entries. Only returned when `enhanced=true`. Added in [`songLyrics`](../../extensions/songlyrics) version 2 |
| `cueLine`       | Array of [`cueLine`](../cueline)     | No      | **Yes** | Word/syllable-level timing data. Each cueLine corresponds to a `line` by its `index` field. Only returned when `enhanced=true` and `synced` is `true`. Added in [`songLyrics`](../../extensions/songlyrics) version 2 |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
