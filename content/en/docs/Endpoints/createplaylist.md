---
title: "createPlaylist"
linkTitle: "createPlaylist"
categories:
- Playlists
description: >
  Creates (or updates) a playlist.
---

`http://your-server/rest/createPlaylist` Since [1.2.0](../../subsonic-versions)

Creates (or updates) a playlist.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistId` | **Yes** (if updating) | |  | The playlist ID. |
| `name` | **Yes** (if creating) |  |   | The human-readable name of the playlist. |
| `songId` | No  |  |   | ID of a song in the playlist. Use one `songId` parameter for each song in the playlist. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/createPlaylist.view?name=abc&songId=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

#### Since [1.14.0](../../subsonic-versions)

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`playlist`](../../responses/playlistwithsongs) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
    "playlist": {
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
          "bitDepth": 16,
          "samplingRate": 44100,
          "channelCount": 2,
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
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "playlist": {
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
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `playlist` | [`playlist`](../../responses/playlistwithsongs) | **Yes** |   | The created playlist |

#### Before [1.14.0](../../subsonic-versions)

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}
