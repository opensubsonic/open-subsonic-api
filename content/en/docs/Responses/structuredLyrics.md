---
title: "structuredLyrics"
linkTitle: "structuredLyrics [OS]"
opensubsonic:
  - Addition
description: >
  Structured lyrics
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic synced JSON" lang="json">}}
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
}
{{< /tab >}}
{{< tab header="OpenSubsonic synced XML" lang="xml">}}
<structuredLyrics artist="Muse" artistId="1234" title="Hysteria" lang="en" synced="true">
  <line start="0">It's bugging me</line>
  <line start="2000">Grating me</line>
  <line start="3001">And twisting me around...</line>
</structuredLyrics>
{{< /tab >}}
{{< tab header="OpenSubsonic unsynced JSON" lang="json">}}
{
  "artist": "Muse",
  "artistId": "1234",
  "title": "Hysteria",
  "lang": "eng",
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
{{< /tab >}}
{{< tab header="OpenSubsonic unsynced XML" lang="xml">}}
<structuredLyrics artist="Muse" artistId="1234" title="Hysteria" lang="en" synced="true">
  <line>It's bugging me</line>
  <line>Grating me</line>
  <line>And twisting me around...</line>
</structuredLyrics>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field      | Type                       | Req.    | OpenS.  | Details                                                                          |
| ---------- | -------------------------- | ------- | ------- | -------------------------------------------------------------------------------- |
| `lang`     | `string`                   | **Yes** | **Yes** | The lyrics language                                                              |
| `synced`   | `boolean`                  | **Yes** | **Yes** | True if the lyrics are synced, false otherwise                                   |
| `line`     | Array of [`line`](../line) | **Yes** | **Yes** | The actual lyrics. Ordered by start time (synced) or appearance order (unsynced) |
| `artist`   | `string`                   | No      | **Yes** | The artist name                                                                  |
| `artistId` | `string`                   | No      | **Yes** | The artist id                                                                    |
| `title`    | `string`                   | No      | **Yes** | The song name                                                                    |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| ------ | --------- | ------- |

{{< /alert >}}
