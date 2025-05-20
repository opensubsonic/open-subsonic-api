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

Retrieves all structured lyrics from the server for a given song.
The lyrics can come from embedded tags (`SYLT`/`USLT`), LRC file/text file, or any other external source.

`http://your-server/rest/getLyricsBySongId`

### Parameters

| Parameter | Req.    | OpenS.  | Default | Comment       |
| --------- | ------- | ------- | ------- | ------------- |
| `id`      | **Yes** | **Yes** |         | The track ID. |                                                                                         

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

| Field        | Type                          | Req.    | OpenS.  | Details                   |
| ------------ | ----------------------------- | ------- | ------- | ------------------------- |
| `lyricsList` | [`lyricsList`](../../responses/lyricslist) | **Yes** | **Yes** | List of structured lyrics |
