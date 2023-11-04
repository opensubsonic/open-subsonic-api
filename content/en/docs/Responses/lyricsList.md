---
title: "lyricsList"
linkTitle: "lyricsList [OS]"
opensubsonic:
  - Addition
description: >
  List of structured lyrics
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "structuredLyrics": [
    {
      "artist": "Muse",
      "artistId": "1234",
      "title": "Hysteria",
      "lang": "eng",
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
      "artist": "Muse",
      "artistId": "1234",
      "title": "Hysteria",
      "lang": "xxx",
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
  <structuredLyrics artist="Muse" artistId="1234" title="Hysteria" lang="en" synced="true">
    <line start="0">It's bugging me</line>
    <line start="2000">Grating me</line>
    <line start="3001">And twisting me around...</line>
  </structuredLyrics>
  <structuredLyrics artist="Muse" artistId="1234" title="Hysteria" lang="en" synced="false">
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

| Field              | Type                                               | Req. | OpenS.  | Details           |
| ------------------ | -------------------------------------------------- | ---- | ------- | ----------------- |
| `structuredLyrics` | Array of [`structuredLyrics`](../structuredlyrics) | No   | **Yes** | Structured lyrics |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| ------ | --------- | ------- |

{{< /alert >}}
