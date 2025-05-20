---
title: "getPodcastEpisode"
linkTitle: "getPodcastEpisode [OS]"
OpenSubsonic:
    - Extension
categories:
    - Browsing
description: >
    Returns details for a podcast episode.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `getPodcastEpisode` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))
`http://your-server/rest/getPodcastEpisode`

Returns details for a podcast episode.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** | **Yes** |    | The podcast episode ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getPodcastEpisode.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`podcastEpisode`](../../responses/podcastepisode) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "podcastEpisode": {
      "id": "7390",
      "parent": "7389",
      "isDir": "false",
      "title": "Jonas Gahr Støre",
      "album": "NRK – Hallo P3",
      "artist": "Podcast",
      "year": "2015",
      "coverArt": "7389",
      "size": "41808585",
      "contentType": "audio/mpeg",
      "suffix": "mp3",
      "duration": "2619",
      "bitRate": "128",
      "isVideo": "false",
      "created": "2015-09-07T20:07:31.000Z",
      "artistId": "453",
      "type": "podcast",
      "streamId": "7410",
      "channelId": "17",
      "description": "Jonas Gahr Støre fra Arbeiderpartiet er med i dagens partilederutspørring i Hallo P3!",
      "status": "completed",
      "publishDate": "2015-09-07T15:29:00.000Z"
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `podcastEspisode` | [`podcastEpisode`](../../responses/podcastepisode) | **Yes** |     | The podcast episode |
