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
| `enhanced` | No      | **Yes** | `false` | When `true`, the response includes [`cueLine`](../../responses/cueline) arrays and non-main [`kind`](../../responses/structuredlyrics) tracks (translations, pronunciations). When `false` or omitted, only `kind="main"` entries are returned with no `cueLine` data. Added in [`songLyrics`](../../extensions/songlyrics) version 2. |

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

When `enhanced=true` is passed, the response includes `kind` to classify lyric tracks, [`cueLine`](../../responses/cueline) arrays with word/syllable-level timing, and additional tracks such as translations and pronunciations.

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
                { "start": 2747, "end": 3018, "value": "눈" },
                { "start": 3018, "end": 3179, "value": "을" },
                { "start": 3179, "end": 3582, "value": " " },
                { "start": 3582, "end": 4100, "value": "뜬" },
                { "start": 4100, "end": 4500, "value": " " },
                { "start": 4500, "end": 5200, "value": "순" },
                { "start": 5200, "end": 6214, "value": "간" }
              ]
            },
            {
              "index": 1,
              "start": 6214,
              "end": 9000,
              "value": "모든 게 달라졌어",
              "cue": [
                { "start": 6214, "end": 6800, "value": "모" },
                { "start": 6800, "end": 7200, "value": "든" },
                { "start": 7200, "end": 7600, "value": " " },
                { "start": 7600, "end": 8000, "value": "게" },
                { "start": 8000, "end": 8400, "value": " " },
                { "start": 8400, "end": 9000, "value": "달라졌어" }
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
              "cue": [
                { "start": 2747, "end": 3179, "value": "nuneul" },
                { "start": 3582, "end": 4100, "value": "tteun" },
                { "start": 4500, "end": 6214, "value": "sungan" }
              ]
            },
            {
              "index": 1,
              "start": 6214,
              "end": 9000,
              "cue": [
                { "start": 6214, "end": 7200, "value": "modeun" },
                { "start": 7600, "end": 8000, "value": "ge" },
                { "start": 8400, "end": 9000, "value": "dallajyeosseo" }
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
        <cue start="2747" end="3018">눈</cue>
        <cue start="3018" end="3179">을</cue>
        <cue start="3179" end="3582"> </cue>
        <cue start="3582" end="4100">뜬</cue>
        <cue start="4100" end="4500"> </cue>
        <cue start="4500" end="5200">순</cue>
        <cue start="5200" end="6214">간</cue>
      </cueLine>
      <cueLine index="1" start="6214" end="9000" value="모든 게 달라졌어">
        <cue start="6214" end="6800">모</cue>
        <cue start="6800" end="7200">든</cue>
        <cue start="7200" end="7600"> </cue>
        <cue start="7600" end="8000">게</cue>
        <cue start="8000" end="8400"> </cue>
        <cue start="8400" end="9000">달라졌어</cue>
      </cueLine>
    </structuredLyrics>
    <structuredLyrics kind="translation" lang="eng" synced="true">
      <line start="2747">The moment I opened my eyes</line>
      <line start="6214">Everything had changed</line>
    </structuredLyrics>
    <structuredLyrics kind="pronunciation" lang="ko-Latn" synced="true">
      <line start="2747">nuneul tteun sungan</line>
      <line start="6214">modeun ge dallajyeosseo</line>
      <cueLine index="0" start="2747" end="6214">
        <cue start="2747" end="3179">nuneul</cue>
        <cue start="3582" end="4100">tteun</cue>
        <cue start="4500" end="6214">sungan</cue>
      </cueLine>
      <cueLine index="1" start="6214" end="9000">
        <cue start="6214" end="7200">modeun</cue>
        <cue start="7600" end="8000">ge</cue>
        <cue start="8400" end="9000">dallajyeosseo</cue>
      </cueLine>
    </structuredLyrics>
  </lyricsList>
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

##### Example with background vocals (role on cueLine)

When a source distinguishes both a default/main vocal layer and background vocals within the same lyric line, the server splits them into separate cueLines with the same `index`. If a default/main cueLine is present, it uses an empty/omitted `role` and comes first. The `role` field is a clean enum (`bg`, `voice`, `group`); individual voice parts also carry a `voiceIndex`. An optional `displayRole` provides a human-readable label when the source data includes one:

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "cueLine": [
    {
      "index": 0,
      "start": 1000,
      "end": 3000,
      "value": "Hello echo",
      "cue": [
        { "start": 1000, "end": 1400, "value": "He" },
        { "start": 1400, "end": 1800, "value": "llo" }
      ]
    },
    {
      "index": 0,
      "start": 1000,
      "end": 3000,
      "value": "Hello echo",
      "role": "bg",
      "cue": [
        { "start": 2000, "end": 2500, "value": "echo" }
      ]
    }
  ]
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<cueLine index="0" start="1000" end="3000" value="Hello echo">
  <cue start="1000" end="1400">He</cue>
  <cue start="1400" end="1800">llo</cue>
</cueLine>
<cueLine index="0" start="1000" end="3000" value="Hello echo" role="bg">
  <cue start="2000" end="2500">echo</cue>
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
- Within a `cueLine`, `cue.end` **must** be either present on **all** cues or **none** (all-or-nothing). When the source provides partial end times, servers **must** fill missing values. When no cues have end times, `end` is omitted from all cues.
- When multiple cueLines share the same `index`, any default/main cueLine (empty/omitted `role`) **must** come first. Clients should not assume every source can distinguish or emit a default/main layer.
- When servers derive missing cue end-times, they **must** avoid introducing overlaps within a `cueLine`. Since the server is generating these values (not preserving source data), it can guarantee non-overlapping output. Clients should still handle overlapping cue intervals from source data gracefully.
- Cues where `start == end` (zero-duration) may occur. Clients should treat these as instantaneous markers.
- `structuredLyrics` entries are independent across `kind` tracks, including `main`. Clients should not assume 1:1 correspondence of `line` arrays or `cueLine` arrays between tracks.
- Cue counts may differ across `kind` tracks for the same lyric passage. Clients should not assume 1:1 cue correspondence between tracks.
- For right-to-left scripts (Arabic, Hebrew), cues are in logical reading order. Clients are responsible for bidi rendering.

{{< /alert >}}
