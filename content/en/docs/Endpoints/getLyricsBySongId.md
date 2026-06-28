---
title: "getLyricsBySongId"
linkTitle: "getLyricsBySongId [OS]"
OpenSubsonic:
  - Extension
categories:
  - Media retrieval
description: >
  Add support for synchronized lyrics, multiple languages, and retrieval by song ID.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `songLyrics` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

Retrieves all structured lyrics from the server for a given song.
The lyrics can come from embedded tags (`SYLT`/`USLT`), LRC file/text file, or any other external source.

`http://your-server/rest/getLyricsBySongId`

### Parameters

| Parameter  | Req.    | OpenS.  | Default | Comment                                                                                                                                                |
| ---------- | ------- | ------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `id`       | **Yes** | **Yes** |         | The track ID.                                                                                                                                          |
| `enhanced` | No      | **Yes** | `false` | When `true`, the response includes [`cueLine`](../../responses/cueline) arrays, cue `byteStart` / `byteEnd` offsets into `cueLine.value`, and non-main [`kind`](../../responses/structuredlyrics) tracks (translations, pronunciations). When `false` or omitted, only `kind="main"` entries are returned with no `cueLine` data. Added in [`songLyrics`](../../extensions/songlyrics) version 2. |

{{< alert color="warning" title="Special notes about the lang field" >}}
Ideally, the server will return `lang` as an ISO 639 (2/3) code.
However, tagged files and external lyrics can come with any value as a potential language code, so clients should take care when displaying `lang`.

Furthermore, there is special behavior for the value `xxx`.
While not an ISO code, it is commonly used by taggers and other parsing software.
Clients should treat `xxx` as not having a specified language (equivalent to the `und` code).
{{< /alert >}}

### Example

{{< alert color="primary" >}} `http://your-server/rest/getLyricsBySongId.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`lyricsList`](../../responses/lyricslist/)

#### Version 1 (default)

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "lyricsList": {
      "structuredLyrics": [
        {
          "displayArtist": "Muse",
          "displayTitle": "Hysteria",
          "lang": "eng",
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
        },
        {
          "displayArtist": "Muse",
          "displayTitle": "Hysteria",
          "lang": "und",
          "offset": 100,
          "synced": false,
          "line": [
            {
              "value": "It's bugging me"
            },
            {
              "value": "Grating me"
            },
            {
              "value": "And twisting me around..."
            }
          ]
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName" serverVersion="0.1.3 (tag)" openSubsonic="true">
  <lyricsList>
    <structuredLyrics displayArtist="Muse" displayTitle="Hysteria" lang="en" offset="-100" synced="true">
      <line start="0">It's bugging me</line>
      <line start="2000">Grating me</line>
      <line start="3001">And twisting me around...</line>
    </structuredLyrics>
    <structuredLyrics displayArtist="Muse" displayTitle="Hysteria" lang="en" offset="100" synced="false">
      <line>It's bugging me</line>
      <line>Grating me</line>
      <line>And twisting me around...</line>
    </structuredLyrics>
  </lyricsList>
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

#### Version 2 (`enhanced=true`)

When `enhanced=true` is passed, the response includes `kind` to classify lyric tracks, [`cueLine`](../../responses/cueline) arrays with word/syllable-level timing, cue `byteStart` / `byteEnd` offsets into `cueLine.value`, optional per-entry [`agents`](../../responses/agent) metadata for agent attribution, and additional tracks such as translations and pronunciations.

{{< alert color="primary" >}} `http://your-server/rest/getLyricsBySongId.view?id=456&enhanced=true&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "lyricsList": {
      "structuredLyrics": [
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
        },
        {
          "kind": "translation",
          "lang": "eng",
          "synced": true,
          "line": [
            { "start": 2747, "value": "The moment I opened my eyes" },
            { "start": 6214, "value": "Everything had changed" }
          ]
        },
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
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName" serverVersion="0.1.3 (tag)" openSubsonic="true">
  <lyricsList>
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
    <structuredLyrics kind="translation" lang="eng" synced="true">
      <line start="2747">The moment I opened my eyes</line>
      <line start="6214">Everything had changed</line>
    </structuredLyrics>
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
  </lyricsList>
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

##### Example with background vocals (agents + agentId)

When a source distinguishes both a lead/default vocal layer and background vocals within the same lyric line, the server emits a shared `agents` array on that `structuredLyrics` entry and splits the lyric into separate cueLines with the same `index`. Each cueLine references one agent via `agentId`, contains that agent/layer's renderable text in `value`, and the cueLine whose referenced agent has `role: "main"` comes first. The parent `line` remains the combined fallback line:

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "line": [
    { "start": 1000, "value": "Hello echo" }
  ],
  "agents": [
    { "id": "lead", "role": "main", "name": "Lead Vocal" },
    { "id": "backing", "role": "bg" }
  ],
  "cueLine": [
    {
      "index": 0,
      "agentId": "lead",
      "start": 1000,
      "end": 3000,
      "value": "Hello",
      "cue": [
        { "start": 1000, "end": 1400, "value": "He", "byteStart": 0, "byteEnd": 1 },
        { "start": 1400, "end": 1800, "value": "llo", "byteStart": 2, "byteEnd": 4 }
      ]
    },
    {
      "index": 0,
      "agentId": "backing",
      "start": 1000,
      "end": 3000,
      "value": "echo",
      "cue": [
        { "start": 2000, "end": 2500, "value": "echo", "byteStart": 0, "byteEnd": 3 }
      ]
    }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<line start="1000">Hello echo</line>
<agent id="lead" role="main" name="Lead Vocal" />
<agent id="backing" role="bg" />
<cueLine index="0" agentId="lead" start="1000" end="3000" value="Hello">
  <cue start="1000" end="1400" byteStart="0" byteEnd="1">He</cue>
  <cue start="1400" end="1800" byteStart="2" byteEnd="4">llo</cue>
</cueLine>
<cueLine index="0" agentId="backing" start="1000" end="3000" value="echo">
  <cue start="2000" end="2500" byteStart="0" byteEnd="3">echo</cue>
</cueLine>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

##### Example with multiple agents (TTML-style attribution)

When a source has multiple named singers (e.g. a duet from TTML with `ttm:agent` and `ttm:name`), the server stores those identities once in `agents` and each cueLine references the relevant singer or group via `agentId`:

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
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
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

##### Example with ambiguous repeated text

When `cueLine.value` contains untimed text between timed cues, `byteStart` / `byteEnd` identifies the exact substring each timed cue covers:

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "cueLine": [
    {
      "index": 0,
      "start": 0,
      "end": 2400,
      "value": "Oh love love me tonight",
      "cue": [
        { "start": 0, "end": 300, "value": "Oh", "byteStart": 0, "byteEnd": 1 },
        { "start": 900, "end": 1300, "value": "love", "byteStart": 8, "byteEnd": 11 },
        { "start": 1300, "end": 1600, "value": "me", "byteStart": 13, "byteEnd": 14 },
        { "start": 1600, "end": 2400, "value": "tonight", "byteStart": 16, "byteEnd": 22 }
      ]
    }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<cueLine index="0" start="0" end="2400" value="Oh love love me tonight">
  <cue start="0" end="300" byteStart="0" byteEnd="1">Oh</cue>
  <cue start="900" end="1300" byteStart="8" byteEnd="11">love</cue>
  <cue start="1300" end="1600" byteStart="13" byteEnd="14">me</cue>
  <cue start="1600" end="2400" byteStart="16" byteEnd="22">tonight</cue>
</cueLine>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

### Response fields

| Field        | Type                          | Req.    | OpenS.  | Details                   |
| ------------ | ----------------------------- | ------- | ------- | ------------------------- |
| `lyricsList` | [`lyricsList`](../../responses/lyricslist) | **Yes** | **Yes** | List of structured lyrics |

### Implementation notes

{{< alert color="warning" title="Backward compatibility" >}}
Without `enhanced=true`, the response is identical to version 1:

- Only `kind="main"` entries are returned (the `kind` field itself is omitted)
- No `cueLine` arrays are included
- The existing `line` array is always present and unchanged
- `cueLine` is a **parallel** structure, not a replacement for `line`

Servers that don't support TTML or word-level timing simply never include these fields. Clients that don't support karaoke display simply ignore them.
{{< /alert >}}

{{< alert color="primary" title="cueLine behavior" >}}

- `cueLine` data is only meaningful when `synced=true`. Servers **must not** emit `cueLine` arrays for unsynced lyrics.
- Within a `cueLine`, `cue.end` **must** be either present on **all** cues or **none** (all-or-nothing). When the source provides partial end times, servers **must** fill missing values. When no cues have end times, `end` is omitted from all cues. This is a documented contract rule; the OpenAPI schema does not encode the all-or-none shape structurally.
- `agents` are scoped to a single `structuredLyrics` entry. When present, `agents` **must** contain at least one entry, and each `agents[].id` **must** be unique within that entry. `agents` are optional for simple unattributed single-layer lyrics. When a `structuredLyrics` entry represents multiple vocal agents/layers, it **must** include `agents`; a single-agent attributed/default entry may also include `agents`, and if it does, exactly one agent **must** use `role: "main"`. `agents` should not be emitted without `cueLine` data.
- When multiple cueLines share the same `index`, the cueLine whose referenced agent has `role: "main"` **must** come first. Clients should not assume every source can distinguish or emit multiple agents.
- When multiple agent cueLines share the same `index`, each `cueLine.value` **must** be independently renderable for that agent/layer. Clients should use `structuredLyrics.line[index].value` as the combined fallback line, not as the per-agent cueLine text.
- If `agents` is present, every `cueLine` in that entry **must** include `agentId`, and each `agentId` **must** match exactly one `agents[].id` in that entry. If `agents` is absent, cueLines **must not** include `agentId`.
- Every cue **must** include `byteStart` / `byteEnd`, and every `cueLine` **must** include `value`. The offsets are 0-based inclusive positions into the final UTF-8 encoding of that `cueLine.value`, with no normalization step, and `byteStart` **must** be ≤ `byteEnd`. The OpenAPI schema enforces the presence of these fields, but not the cross-field ordering constraint structurally.
- Cues within a `cueLine` **must not** overlap (i.e. `cue[n].end` **must** be ≤ `cue[n+1].start`). Servers **must** normalize any source overlaps so that clients can iterate cues sequentially without overlap-resolution logic. Overlapping timing across different cueLines (different `agentId` values) is expected, since those represent parallel vocal layers.
- Cues where `start == end` (zero-duration) may occur. Clients should treat these as instantaneous markers.
- `structuredLyrics` entries are independent across `kind` tracks, including `main`. Clients should not assume 1:1 correspondence of `line` arrays or `cueLine` arrays between tracks.
- Cue counts may differ across `kind` tracks for the same lyric passage. Clients should not assume 1:1 cue correspondence between tracks.
- For right-to-left scripts (Arabic, Hebrew), cues are in logical reading order. Clients are responsible for bidi rendering.

{{< /alert >}}
