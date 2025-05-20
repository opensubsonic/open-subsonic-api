---
title: "getPodcasts"
linkTitle: "getPodcasts"
categories:
- Podcast
description: >
    Returns all Podcast channels the server subscribes to, and (optionally) their episodes.
---


`http://your-server/rest/getPodcasts` Since [1.6.0](../../subsonic-versions)

Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the `id` parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `includeEpisodes` | No  |  |true | (Since [1.9.0](../../subsonic-versions)) Whether to include Podcast episodes in the returned result. |
| `id` | No  |   |   | (Since [1.9.0](../../subsonic-versions)) If specified, only return the Podcast channel with this ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getPodcasts.view?title=tata&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`podcasts`](../../responses/podcasts) element on success.

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
    "podcasts": {
      "channel": [
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
        },
        {
          "id": "3",
          "url": "https://example.com/404",
          "status": "error",
          "errorMessage": "Not Found"
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
      "channel": [
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
        },
        {
          "id": "3",
          "url": "https://example.com/404",
          "status": "error",
          "errorMessage": "Not Found"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `podcasts` | [`podcasts`](../../responses/podcasts) | **Yes** |     | The podacsts |
