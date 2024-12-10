---
title: "getNewestPodcasts"
linkTitle: "getNewestPodcasts"
categories:
- Podcast
description: >
    Returns the most recently published Podcast episodes.
---

`http://your-server/rest/getNewestPodcasts` Since [1.13.0](../../subsonic-versions)

Returns the most recently published Podcast episodes.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `count` | No  |  | 20  | The maximum number of episodes to return. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getNewestPodcasts.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`newestPodcasts`](../../responses/newestpodcasts) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "newestPodcasts": {
      "episode": [
        {
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
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "newestPodcasts": {
      "episode": [
        {
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
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `newestPodcasts` | [`NewestPodcasts`](../../responses/newestpodcasts) | **Yes** |     | The podacsts |
