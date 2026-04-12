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

When `enhanced=true` is passed to [`getLyricsBySongId`](../../endpoints/getlyricsbysongid), the response includes additional fields: `kind` to classify lyric tracks, `cueLine` arrays with word/syllable-level timing, cue `byteStart` / `byteEnd` offsets into `cueLine.value`, and optional `agents` arrays for reusable agent attribution.

Each `structuredLyrics` entry is self-contained. Clients should treat tracks with different `kind` values, including `main`, as independent layers rather than assuming 1:1 line or cue alignment between them. Agent identity is also scoped to a single `structuredLyrics` entry; `agents[].id` values have no meaning outside that entry. When a cue uses `byteStart` / `byteEnd`, those offsets are always relative to the final `cueLine.value` string in the same entry.

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
        { "start": 2747, "end": 3018, "value": "눈", "byteStart": 0, "byteEnd": 2 },
        { "start": 3018, "end": 3179, "value": "을", "byteStart": 3, "byteEnd": 5 },
        { "start": 3179, "end": 3582, "value": " ", "byteStart": 6, "byteEnd": 6 },
        { "start": 3582, "end": 4100, "value": "뜬", "byteStart": 7, "byteEnd": 9 },
        { "start": 4100, "end": 4500, "value": " ", "byteStart": 10, "byteEnd": 10 },
        { "start": 4500, "end": 5200, "value": "순", "byteStart": 11, "byteEnd": 13 },
        { "start": 5200, "end": 6214, "value": "간", "byteStart": 14, "byteEnd": 16 }
      ]
    },
    {
      "index": 1,
      "start": 6214,
      "end": 9000,
      "value": "모든 게 달라졌어",
      "cue": [
        { "start": 6214, "end": 6800, "value": "모", "byteStart": 0, "byteEnd": 2 },
        { "start": 6800, "end": 7200, "value": "든", "byteStart": 3, "byteEnd": 5 },
        { "start": 7200, "end": 7600, "value": " ", "byteStart": 6, "byteEnd": 6 },
        { "start": 7600, "end": 8000, "value": "게", "byteStart": 7, "byteEnd": 9 },
        { "start": 8000, "end": 8400, "value": " ", "byteStart": 10, "byteEnd": 10 },
        { "start": 8400, "end": 9000, "value": "달라졌어", "byteStart": 11, "byteEnd": 22 }
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
    <cue start="2747" end="3018" byteStart="0" byteEnd="2">눈</cue>
    <cue start="3018" end="3179" byteStart="3" byteEnd="5">을</cue>
    <cue start="3179" end="3582" byteStart="6" byteEnd="6"> </cue>
    <cue start="3582" end="4100" byteStart="7" byteEnd="9">뜬</cue>
    <cue start="4100" end="4500" byteStart="10" byteEnd="10"> </cue>
    <cue start="4500" end="5200" byteStart="11" byteEnd="13">순</cue>
    <cue start="5200" end="6214" byteStart="14" byteEnd="16">간</cue>
  </cueLine>
  <cueLine index="1" start="6214" end="9000" value="모든 게 달라졌어">
    <cue start="6214" end="6800" byteStart="0" byteEnd="2">모</cue>
    <cue start="6800" end="7200" byteStart="3" byteEnd="5">든</cue>
    <cue start="7200" end="7600" byteStart="6" byteEnd="6"> </cue>
    <cue start="7600" end="8000" byteStart="7" byteEnd="9">게</cue>
    <cue start="8000" end="8400" byteStart="10" byteEnd="10"> </cue>
    <cue start="8400" end="9000" byteStart="11" byteEnd="22">달라졌어</cue>
  </cueLine>
</structuredLyrics>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

#### Version 2 with agent attribution

When a source distinguishes one or more explicit vocal agents within the same `structuredLyrics` entry, the entry carries a shared `agents` array and each `cueLine` references one via `agentId`. A single attributed/default agent uses `role: "main"`; entries with multiple agents still define exactly one `main` agent and any additional `voice`, `bg`, or `group` agents around it:

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "kind": "main",
  "lang": "eng",
  "synced": true,
  "line": [
    { "start": 1000, "value": "You and I" },
    { "start": 4000, "value": "Under this sky" },
    { "start": 7000, "value": "Together tonight" }
  ],
  "agents": [
    { "id": "lead", "role": "main", "name": "Chris Martin" },
    { "id": "guest", "role": "voice", "name": "Jin" },
    { "id": "choir", "role": "group", "name": "All" }
  ],
  "cueLine": [
    {
      "index": 0,
      "agentId": "lead",
      "start": 1000,
      "end": 4000,
      "value": "You and I",
      "cue": [
        { "start": 1000, "end": 1800, "value": "You ", "byteStart": 0, "byteEnd": 3 },
        { "start": 1800, "end": 2400, "value": "and ", "byteStart": 4, "byteEnd": 7 },
        { "start": 2400, "end": 3200, "value": "I", "byteStart": 8, "byteEnd": 8 }
      ]
    },
    {
      "index": 1,
      "agentId": "guest",
      "start": 4000,
      "end": 7000,
      "value": "Under this sky",
      "cue": [
        { "start": 4000, "end": 4800, "value": "Un", "byteStart": 0, "byteEnd": 1 },
        { "start": 4800, "end": 5400, "value": "der ", "byteStart": 2, "byteEnd": 5 },
        { "start": 5400, "end": 5900, "value": "this ", "byteStart": 6, "byteEnd": 10 },
        { "start": 5900, "end": 7000, "value": "sky", "byteStart": 11, "byteEnd": 13 }
      ]
    },
    {
      "index": 2,
      "agentId": "choir",
      "start": 7000,
      "end": 10000,
      "value": "Together tonight",
      "cue": [
        { "start": 7000, "end": 8000, "value": "To", "byteStart": 0, "byteEnd": 1 },
        { "start": 8000, "end": 8800, "value": "ge", "byteStart": 2, "byteEnd": 3 },
        { "start": 8800, "end": 9200, "value": "ther ", "byteStart": 4, "byteEnd": 8 },
        { "start": 9200, "end": 10000, "value": "tonight", "byteStart": 9, "byteEnd": 15 }
      ]
    }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<structuredLyrics kind="main" lang="eng" synced="true">
  <line start="1000">You and I</line>
  <line start="4000">Under this sky</line>
  <line start="7000">Together tonight</line>
  <agent id="lead" role="main" name="Chris Martin" />
  <agent id="guest" role="voice" name="Jin" />
  <agent id="choir" role="group" name="All" />
  <cueLine index="0" agentId="lead" start="1000" end="4000" value="You and I">
    <cue start="1000" end="1800" byteStart="0" byteEnd="3">You </cue>
    <cue start="1800" end="2400" byteStart="4" byteEnd="7">and </cue>
    <cue start="2400" end="3200" byteStart="8" byteEnd="8">I</cue>
  </cueLine>
  <cueLine index="1" agentId="guest" start="4000" end="7000" value="Under this sky">
    <cue start="4000" end="4800" byteStart="0" byteEnd="1">Un</cue>
    <cue start="4800" end="5400" byteStart="2" byteEnd="5">der </cue>
    <cue start="5400" end="5900" byteStart="6" byteEnd="10">this </cue>
    <cue start="5900" end="7000" byteStart="11" byteEnd="13">sky</cue>
  </cueLine>
  <cueLine index="2" agentId="choir" start="7000" end="10000" value="Together tonight">
    <cue start="7000" end="8000" byteStart="0" byteEnd="1">To</cue>
    <cue start="8000" end="8800" byteStart="2" byteEnd="3">ge</cue>
    <cue start="8800" end="9200" byteStart="4" byteEnd="8">ther </cue>
    <cue start="9200" end="10000" byteStart="9" byteEnd="15">tonight</cue>
  </cueLine>
</structuredLyrics>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

The same song with `kind: "pronunciation"` — note how cue counts differ from the main track (3 romanized words vs. 7 Korean syllables):

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "kind": "pronunciation",
  "lang": "ko-Latn",
  "synced": true,
  "line": [
    { "start": 2747, "value": "nuneul tteun sungan" },
    { "start": 6214, "value": "modeun ge dallajyeosseo" }
  ],
  "cueLine": [
    {
      "index": 0,
      "start": 2747,
      "end": 6214,
      "value": "nuneul tteun sungan",
      "cue": [
        { "start": 2747, "end": 3179, "value": "nuneul", "byteStart": 0, "byteEnd": 5 },
        { "start": 3582, "end": 4100, "value": "tteun", "byteStart": 7, "byteEnd": 11 },
        { "start": 4500, "end": 6214, "value": "sungan", "byteStart": 13, "byteEnd": 18 }
      ]
    },
    {
      "index": 1,
      "start": 6214,
      "end": 9000,
      "value": "modeun ge dallajyeosseo",
      "cue": [
        { "start": 6214, "end": 7200, "value": "modeun", "byteStart": 0, "byteEnd": 5 },
        { "start": 7600, "end": 8000, "value": "ge", "byteStart": 7, "byteEnd": 8 },
        { "start": 8400, "end": 9000, "value": "dallajyeosseo", "byteStart": 10, "byteEnd": 22 }
      ]
    }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<structuredLyrics kind="pronunciation" lang="ko-Latn" synced="true">
  <line start="2747">nuneul tteun sungan</line>
  <line start="6214">modeun ge dallajyeosseo</line>
  <cueLine index="0" start="2747" end="6214" value="nuneul tteun sungan">
    <cue start="2747" end="3179" byteStart="0" byteEnd="5">nuneul</cue>
    <cue start="3582" end="4100" byteStart="7" byteEnd="11">tteun</cue>
    <cue start="4500" end="6214" byteStart="13" byteEnd="18">sungan</cue>
  </cueLine>
  <cueLine index="1" start="6214" end="9000" value="modeun ge dallajyeosseo">
    <cue start="6214" end="7200" byteStart="0" byteEnd="5">modeun</cue>
    <cue start="7600" end="8000" byteStart="7" byteEnd="8">ge</cue>
    <cue start="8400" end="9000" byteStart="10" byteEnd="22">dallajyeosseo</cue>
  </cueLine>
</structuredLyrics>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

### Fields

| Field           | Type                                 | Req.    | OpenS.  | Details                                                                                                                                                                                                                                                                                                                                         |
| --------------- | ------------------------------------ | ------- | ------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `lang`          | `string`                             | **Yes** | **Yes** | The lyrics language (ideally ISO 639). If the language is unknown (e.g. lrc file), the server **must** return `und` (ISO standard) or `xxx` (common value for taggers)                                                                                                                                                                      |
| `synced`        | `boolean`                            | **Yes** | **Yes** | True if the lyrics are synced, false otherwise                                                                                                                                                                                                                                                                                                  |
| `line`          | Array of [`line`](../line)           | **Yes** | **Yes** | The actual lyrics. Ordered by start time (synced) or appearance order (unsynced)                                                                                                                                                                                                                                                                |
| `displayArtist` | `string`                             | No      | **Yes** | The artist name to display. This could be the localized name, or any other value                                                                                                                                                                                                                                                                |
| `displayTitle`  | `string`                             | No      | **Yes** | The title to display. This could be the song title (localized), or any other value                                                                                                                                                                                                                                                              |
| `offset`        | `number`                             | No      | **Yes** | The offset to apply to all lyrics, in milliseconds. Positive means lyrics appear sooner, negative means later. If not included, the offset **must** be assumed to be 0                                                                                                                                                                         |
| `kind`          | `string`                             | No      | **Yes** | The primary lyric-layer classification for this `structuredLyrics` entry. One of: `main` (primary vocals for this entry, default if omitted), `translation` (a translation of another lyric layer into another language), `pronunciation` (a phonetic/romanized rendering, e.g. romaji for Japanese, pinyin for Chinese). Tracks are independent across `kind` values; clients should not assume 1:1 line or cue alignment between entries. Only returned when `enhanced=true`. Added in [`songLyrics`](../../extensions/songlyrics) version 2 |
| `agents`        | Array of [`agent`](../agent)         | No      | **Yes** | Reusable per-track attribution metadata for `cueLine` entries. When present, **must** contain at least one entry, and each `agents[].id` **must** be unique within this `structuredLyrics` entry. `agents` are optional for simple unattributed single-layer lyrics. When a `structuredLyrics` entry represents multiple vocal agents/layers, it **must** include `agents`; a single-agent attributed/default entry may also include `agents`, and if it does, exactly one agent **must** use `role: "main"`. `agents` should not be emitted without `cueLine` data |
| `cueLine`       | Array of [`cueLine`](../cueline)     | No      | **Yes** | Word/syllable-level timing data. Each cueLine corresponds to a `line` by its `index` field. Every cueLine **must** include `value`, and every nested cue **must** include `byteStart` / `byteEnd` offsets into that exact string. If `agents` is present, every cueLine in the entry **must** include `agentId`; if `agents` is absent, cueLines **must not** include `agentId`. Only returned when `enhanced=true` and `synced` is `true`. Added in [`songLyrics`](../../extensions/songlyrics) version 2 |

If `agents` is present, each `cueLine.agentId` **must** resolve to exactly one `agents[].id` in the same `structuredLyrics` entry.

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
