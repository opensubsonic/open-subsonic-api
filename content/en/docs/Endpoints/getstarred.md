---
title: "getStarred"  
linkTitle: "getStarred"
categories:
- Lists
description: >
  Returns starred songs, albums and artists.
---

`http://your-server/rest/getStarred` Since [1.8.0](../../subsonic-versions)

Returns starred songs, albums and artists.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `musicFolderId` | No  |  |    | (Since [1.12.0](../../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getStarred.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`starred`](../../responses/starred) element on success.

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
    "starred": {
      "artist": [
        {
          "id": "100000002",
          "name": "Synthetic",
          "coverArt": "ar-100000002",
          "starred": "2021-02-22T05:54:18Z"
        }
      ],
      "album": [
        {
          "id": "200000021",
          "parent": "100000036",
          "album": "Forget and Remember",
          "title": "Forget and Remember",
          "name": "Forget and Remember",
          "isDir": true,
          "coverArt": "al-200000021",
          "songCount": 20,
          "created": "2021-07-22T02:09:31+00:00",
          "duration": 4248,
          "playCount": 0,
          "artistId": "100000036",
          "artist": "Comfort Fit",
          "year": 2005,
          "genre": "Hip-Hop"
        }
      ],
      "song": [
        {
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
    "starred": {
      "artist": [
        {
          "id": "100000002",
          "name": "Synthetic",
          "coverArt": "ar-100000002",
          "starred": "2021-02-22T05:54:18Z"
        }
      ],
      "album": [
        {
          "id": "200000021",
          "parent": "100000036",
          "album": "Forget and Remember",
          "title": "Forget and Remember",
          "name": "Forget and Remember",
          "isDir": true,
          "coverArt": "al-200000021",
          "songCount": 20,
          "created": "2021-07-22T02:09:31+00:00",
          "duration": 4248,
          "playCount": 0,
          "artistId": "100000036",
          "artist": "Comfort Fit",
          "year": 2005,
          "genre": "Hip-Hop"
        }
      ],
      "song": [
        {
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
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `starred` | [`starred`](../../responses/starred) | **Yes** |     | The song |
