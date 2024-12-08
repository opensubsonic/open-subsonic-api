---
title: "getSongsByGenre"
linkTitle: "getSongsByGenre"
categories:
- Lists
description: >
    Returns songs in a given genre.
---

`http://your-server/rest/getSongsByGenre` Since [1.9.0](../../subsonic-versions)

Returns songs in a given genre.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `genre` | **Yes** | |    | The genre, as returned by `getGenres`. |
| `count` | No  | | 10  | The maximum number of songs to return. Max 500. |
| `offset` | No  | | 0   | The offset. Useful if you want to page through the songs in a genre. |
| `musicFolderId` | No |  |    | (Since [1.12.0](../../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getSongsByGenre.view?genre=Electronic&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`songsByGenre`](../../responses/songsbygenre) element on success.

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
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `songsByGenre` | [`songs`](../../responses/songs) | **Yes** |     | The songs list |
