---
title: "playlistWithSongs"
linkTitle: "playlistWithSongs"
description: >
  Playlist with songs.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "800000075",
  "name": "testcreate",
  "owner": "user",
  "public": true,
  "created": "2023-03-16T03:18:41+00:00",
  "changed": "2023-03-16T03:18:41+00:00",
  "songCount": 1,
  "duration": 304,
  "entry": [
    {
      "id": "300000060",
      "parent": "200000002",
      "title": "BrownSmoke",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000002",
      "album": "Colorsmoke EP",
      "artistId": "100000002",
      "artist": "Synthetic",
      "coverArt": "300000060",
      "duration": 304,
      "bitRate": 20,
      "codec": "wma",
      "bitDepth": 16,
      "samplingRate": 44100,
      "userRating": 5,
      "averageRating": 5,
      "track": 4,
      "year": 2007,
      "genre": "Electronic",
      "size": 792375,
      "discNumber": 1,
      "suffix": "wma",
      "contentType": "audio/x-ms-wma",
      "path": "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007/04-Synthetic_-_BrownSmokeYSBM20k22khS.wma"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id": "800000075",
  "name": "testcreate",
  "owner": "user",
  "public": true,
  "created": "2023-03-16T03:18:41+00:00",
  "changed": "2023-03-16T03:18:41+00:00",
  "songCount": 1,
  "duration": 304,
  "entry": [
    {
      "id": "300000060",
      "parent": "200000002",
      "title": "BrownSmoke",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000002",
      "album": "Colorsmoke EP",
      "artistId": "100000002",
      "artist": "Synthetic",
      "coverArt": "300000060",
      "duration": 304,
      "bitRate": 20,
      "codec": "wma",
      "bitDepth": 16,
      "samplingRate": 44100,
      "userRating": 5,
      "averageRating": 5,
      "track": 4,
      "year": 2007,
      "genre": "Electronic",
      "size": 792375,
      "discNumber": 1,
      "suffix": "wma",
      "contentType": "audio/x-ms-wma",
      "path": "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007/04-Synthetic_-_BrownSmokeYSBM20k22khS.wma"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | Id of the playlist |
| `name` | `string` | **Yes** |     | Name of the playlist |
| `comment` | `string` | No|     | A commnet |
| `owner` | `string` | No |     | Owner of the playlist |
| `public` | `boolean` | No|     | Is the playlist public |
| `songCount` | `int` | **Yes** |     | number of songs |
| `duration` | `int` | **Yes** |     | Playlist duration in seconds |
| `created` | `string` | **Yes** |     | Creation date [ISO 8601] |
| `changed` | `string` | **Yes** |     | Last changed date [ISO 8601] |
| `coverArt` | `string` | No |     | A cover Art Id |
| `allowedUser` | Array of `string` | No |     | A list of allowed usernames |
| `entry` | Array of [`Child`](../child) | No |     | The list of songs |
