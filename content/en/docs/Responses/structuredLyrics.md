---
title: "structuredLyrics"
linkTitle: "structuredLyrics [OS]"
opensubsonic:
  - Addition
description: >
  Structured lyrics
---

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

| Field           | Type                       | Req.    | OpenS.  | Details                                                                                                                                                                |
| --------------- | -------------------------- | ------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `lang`          | `string`                   | **Yes** | **Yes** | The lyrics language (ideally ISO 639). If the language is unknown (e.g. lrc file), the server **must** return `und` (ISO standard) or `xxx` (common value for taggers) |
| `synced`        | `boolean`                  | **Yes** | **Yes** | True if the lyrics are synced, false otherwise                                                                                                                         |
| `line`          | Array of [`line`](../line) | **Yes** | **Yes** | The actual lyrics. Ordered by start time (synced) or appearance order (unsynced)                                                                                       |
| `displayArtist` | `string`                   | No      | **Yes** | The artist name to display. This could be the localized name, or any other value                                                                                       |
| `displayTitle`  | `string`                   | No      | **Yes** | The title to display. This could be the song title (localized), or any other value                                                                                     |
| `offset`        | `number`                   | No      | **Yes** | The offset to apply to all lyrics, in milliseconds. Positive means lyrics appear sooner, negative means later. If not included, the offset **must** be assumed to be 0 |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
