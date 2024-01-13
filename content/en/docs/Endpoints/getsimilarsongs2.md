---
title: "getSimilarSongs2"
linkTitle: "getSimilarSongs2"
categories:
- Browsing
description: >
  Returns a random collection of songs from the given artist and similar artists.
---

`http://your-server/rest/getSimilarSongs2` Since [1.11.0](../../subsonic-versions)

Similar to [`getSimilarSongs`](../getsimilarsongs), but organizes music according to ID3 tags.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |   | The artist ID. |
| `count` | No  | |50  | Max number of songs to return. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getSimilarSongs2.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`similarSongs2`](../../responses/similarsongs2) element on success.

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
    "similarSongs2": {
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
          "codec": "mp3",
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
    "similarSongs2": {
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
          "codec": "mp3",
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
| `similarSongs2` | [`similarSongs2`](../../responses/similarsongs2)| **Yes** |   | The similar songs list |
