---
title: "lyricsList"
linkTitle: "lyricsList [OS]"
opensubsonic:
  - Addition
description: >
  List of structured lyrics
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
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
      "lang": "xxx",
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
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<lyricsList>
  <structuredLyrics displayArtist="Muse" displayTitle="Hysteria" lang="eng" offset="-100" synced="true">
    <line start="0">It's bugging me</line>
    <line start="2000">Grating me</line>
    <line start="3001">And twisting me around...</line>
  </structuredLyrics>
  <structuredLyrics displayArtist="Muse" displayTitle="Hysteria" lang="xxx" offset="100" synced="false">
    <line>It's bugging me</line>
    <line>Grating me</line>
    <line>And twisting me around...</line>
  </structuredLyrics>
</lyricsList>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field              | Type                                               | Req. | OpenS.  | Details                                                                                 |
| ------------------ | -------------------------------------------------- | ---- | ------- | --------------------------------------------------------------------------------------- |
| `structuredLyrics` | Array of [`structuredLyrics`](../structuredlyrics) | No   | **Yes** | Structured lyrics. There can be multiple lyrics of the same type with the same language |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
