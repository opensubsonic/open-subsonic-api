---
title: "NewestPodcasts"
linkTitle: "NewestPodcasts [OS]"
description: >
  NewestPodcasts.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "totalCount": 1,
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
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
{{< /tab >}}
{{< /tabpane >}}

| Field        | Type                                              | Req. | OpenS. | Details |
| ------------ | ------------------------------------------------- | ---- | ------ | ------- |
| `totalCount` | Total item count for the request ignoring `size` and `offset` limits. Use `-1` to denote unsupported, unknown or uncounted values. | No |  **Yes** | Int  |
| `episode`    | An array of [`PodcastEpisode`](../podcastepisode) | No   |        |         |
