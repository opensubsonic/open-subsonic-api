---
title: "getRandomSongs"
linkTitle: "getRandomSongs"
categories:
- Lists
description: >
  Returns random songs matching the given criteria.
---

`http://your-server/rest/getRandomSongs` Since [1.2.0](../../subsonic-versions)

Returns random songs matching the given criteria.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `size` | No   || 10  | The maximum number of songs to return. Max 500. |
| `genre` | No   ||   | Only returns songs belonging to this genre. |
| `fromYear` | No  | |   | Only return songs published after or in this year. |
| `toYear` | No   ||   | Only return songs published before or in this year. |
| `musicFolderId` |  No  | |  | Only return songs in the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getRandomSongs.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`randomSongs`](../../responses/randomsongs) element on success.

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
    "randomSongs": {
      "song": [
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
        },
        {
          "id": "300000055",
          "parent": "200000002",
          "title": "Red&GreenSmoke",
          "isDir": false,
          "isVideo": false,
          "type": "music",
          "albumId": "200000002",
          "album": "Colorsmoke EP",
          "artistId": "100000002",
          "artist": "Synthetic",
          "coverArt": "300000055",
          "duration": 400,
          "bitRate": 64,
          "bitDepth": 16,
          "samplingRate": 44100,
          "track": 5,
          "year": 2007,
          "genre": "Electronic",
          "size": 3209886,
          "discNumber": 1,
          "suffix": "mp3",
          "contentType": "audio/mpeg",
          "path": "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007(1)/05-Synthetic_-_RedGreenSmokePM20k22khS_64kb.mp3"
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
    "randomSongs": {
      "song": [
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
        },
        {
          "id": "300000055",
          "parent": "200000002",
          "title": "Red&GreenSmoke",
          "isDir": false,
          "isVideo": false,
          "type": "music",
          "albumId": "200000002",
          "album": "Colorsmoke EP",
          "artistId": "100000002",
          "artist": "Synthetic",
          "coverArt": "300000055",
          "duration": 400,
          "bitRate": 64,
          "bitDepth": 16,
          "samplingRate": 44100,
          "track": 5,
          "year": 2007,
          "genre": "Electronic",
          "size": 3209886,
          "discNumber": 1,
          "suffix": "mp3",
          "contentType": "audio/mpeg",
          "path": "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007(1)/05-Synthetic_-_RedGreenSmokePM20k22khS_64kb.mp3"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `randomSongs` | [`randomSongs`](../../responses/randomsongs)| **Yes** |   | The random songs list |
