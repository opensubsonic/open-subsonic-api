---
title: "getSong"
linkTitle: "getSong"
categories:
- Browsing
description: >
    Returns details for a song.
---

`http://your-server/rest/getSong` Since [1.8.0](../../subsonic-versions)

Returns details for a song.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |   |    | The song ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getSong.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`song`](../../responses/song) element on success.

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
    "song": {
      "id": "082f435a363c32c57d5edb6a678a28d4",
      "parent": "e8a0685e3f3ec6f251649af2b58b8617",
      "isDir": false,
      "title": "\"polar expedition\"",
      "album": "Live at The Casbah - 2005-04-29",
      "artist": "The New Deal",
      "track": 4,
      "year": 2005,
      "coverArt": "mf-082f435a363c32c57d5edb6a678a28d4_6410b3ce",
      "size": 19866778,
      "contentType": "audio/flac",
      "suffix": "flac",
      "starred": "2023-03-27T09:45:27Z",
      "duration": 178,
      "bitRate": 880,
      "bitDepth": 16,
      "samplingRate": 44100,
      "channelCount": 2,
      "path": "The New Deal/Live at The Casbah - 2005-04-29/04 - \"polar expedition\".flac",
      "playCount": 8,
      "played": "2023-03-26T22:27:46Z",
      "discNumber": 1,
      "created": "2023-03-14T17:51:22.112827504Z",
      "albumId": "e8a0685e3f3ec6f251649af2b58b8617",
      "artistId": "97e0398acf63f9fb930d7d4ce209a52b",
      "type": "music",
      "mediaType": "song",
      "isVideo": false,
      "bpm": 134,
      "comment": "This is a song comment",
      "sortName": "Polar expedition",
      "musicBrainzId": "189002e7-3285-4e2e-92a3-7f6c30d407a2",
      "genres": [
        {
          "name": "Hip-Hop"
        },
        {
          "name": "East coast"
        }
      ],
      "artists": [
        {
          "id": "ar-1",
          "name": "Artist 1"
        },
        {
          "id": "ar-2",
          "name": "Artist 2"
        }
      ],
      "displayArtist": "Artist 1 feat. Artist 2",
      "albumArtists": [
        {
          "id": "ar-6",
          "name": "Artist 6"
        },
        {
          "id": "ar-7",
          "name": "Artist 7"
        }
      ],
      "displayAlbumArtist": "Artist 6 & Artist 7",
      "contributors": [
        {
          "role": "composer",
          "artist": {
            "id": "ar-3",
            "name": "Artist 3"
          }
        },
        {
          "role": "composer",
          "artist": {
            "id": "ar-4",
            "name": "Artist 4"
          }
        },
        {
          "role": "lyricist",
          "artist": {
            "id": "ar-5",
            "name": "Artist 5"
          }
        },
        {
          "role": "performer",
          "subRole": "Bass",
          "artist": {
            "id": "ar-5",
            "name": "Artist 5"
          }
        }
      ],
      "displayComposer": "Artist 3, Artist 4",
      "moods": [
        "slow",
        "cool"
      ],
      "replayGain": {
        "trackGain": 0.1,
        "albumGain": 1.1,
        "trackPeak": 9.2,
        "albumPeak": 9,
        "baseGain": 0
      }
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "song": {
      "id": "082f435a363c32c57d5edb6a678a28d4",
      "parent": "e8a0685e3f3ec6f251649af2b58b8617",
      "isDir": false,
      "title": "\"polar expedition\"",
      "album": "Live at The Casbah - 2005-04-29",
      "artist": "The New Deal",
      "track": 4,
      "year": 2005,
      "coverArt": "mf-082f435a363c32c57d5edb6a678a28d4_6410b3ce",
      "size": 19866778,
      "contentType": "audio/flac",
      "suffix": "flac",
      "starred": "2023-03-27T09:45:27Z",
      "duration": 178,
      "bitRate": 880,
      "bitDepth": 16,
      "samplingRate": 44100,
      "channelCount": 2,
      "path": "The New Deal/Live at The Casbah - 2005-04-29/04 - \"polar expedition\".flac",
      "playCount": 8,
      "discNumber": 1,
      "created": "2023-03-14T17:51:22.112827504Z",
      "albumId": "e8a0685e3f3ec6f251649af2b58b8617",
      "artistId": "97e0398acf63f9fb930d7d4ce209a52b",
      "type": "music",
      "isVideo": false
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `song` | [`Child`](../../responses/child) | **Yes** |     | The song |
