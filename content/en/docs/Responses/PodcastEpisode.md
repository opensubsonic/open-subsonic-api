---
title: "PodcastEpisode"
linkTitle: "PodcastEpisode"
description: >
  A Podcast episode
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
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
{{< /tab >}}
{{< /tabpane >}}

{{< alert color="primary" title="OpenSubsonic" >}}
`PodcastEntry` extends [`Child`](../child) (See [`Child`](../child) documentation for the corresponding fields)
{{< /alert >}}

| Field         | Type                              | Req.    | OpenS. | Details                                   |
| ------------- | ----------------------------------| ------- | ------ | ----------------------------------------- |
| `streamId`    | `string`                          | No      |        | ID used for streaming podcast             |
| `channelId`   | `string`                          | **Yes** |        | ID of the podcast channel                 |
| `description` | `string`                          | No      |        | Episode description                       |
| `status`      | [PodcastStatus](../podcaststatus) | **Yes** |        | Podcast status                            |
| `publishDate` | `string`                          | No      |        | Date the episode was published [ISO 8601] |
