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

`http://your-server/rest/getLyricsBySongId`

### Parameters

| Parameter    | Req.    | OpenS.  | Default | Comment                                                                                                                  |
| ------------ | ------- | ------- | ------- | ------------------------------------------------------------------------------------------------------------------------ |
| `id`         | **Yes** | **Yes** |         | The track ID.                                                                                                            |
| `lang`       | No      | **Yes** |         | Language(s) to include. Use multiple `lang` parameters to select multiple languages. If not specified, return all lyrics |
| `includeIds` | No      | **Yes** | false   | If true, include artist id in response                                                                                   |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getLyricsBySongId.view?&id=123&lang=eng&lang=xxx&includeIds=true&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
      "structured-lyrics": [
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
  }
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName" serverVersion="0.1.3 (tag)" openSubsonic="true">
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
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field        | Type                          | Req.    | OpenS.  | Details                   |
| ------------ | ----------------------------- | ------- | ------- | ------------------------- |
| `lyricsList` | [`lyricsList`](../../responses/lyricslist) | **Yes** | **Yes** | List of structured lyrics |