---
title: "getLyricsBySongId"
linkTitle: "getLyricsBySongId [OS]"
OpenSubsonic:
  - Extension
categories:
  - Media retrieval
description: >
  Add support for synchronized lyrics, multiple languages, and retrieval by song ID
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `songLyrics` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

Retrieves structured lyrics from the server for a given song.
The lyrics can come from embedded tags (`SYLT`/`USLT`), LRC file/text file, or any other external source.

`http://your-server/rest/getLyricsBySongId`

### Parameters

| Parameter    | Req.    | OpenS.  | Default | Comment                                                                                                                  |
| ------------ | ------- | ------- | ------- | ------------------------------------------------------------------------------------------------------------------------ |
| `id`         | **Yes** | **Yes** |         | The track ID.                                                                                                            |
| `lang`       | No      | **Yes** |         | Language(s) to include. Use multiple `lang` parameters to select multiple languages. If not specified, return all lyrics |

{{<alert color="primary" title="Special notes about lang field">}}
If the user requests one or more language codes, and the server only has `und` lang, the server **must** return the undefined language.
For example, if the server has `jpn` and `und` and the user requests `swa`, the server must return the `und` lyrics.
{{< /alert >}}

### Example

{{< alert color="primary" >}} `http://your-server/rest/getLyricsBySongId.view?&id=123&lang=eng&lang=und&&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`lyricsList`](../../responses/lyricslist/)

{{< tabpane persistLang=false >}}
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
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field        | Type                          | Req.    | OpenS.  | Details                   |
| ------------ | ----------------------------- | ------- | ------- | ------------------------- |
| `lyricsList` | [`lyricsList`](../../responses/lyricslist) | **Yes** | **Yes** | List of structured lyrics |
