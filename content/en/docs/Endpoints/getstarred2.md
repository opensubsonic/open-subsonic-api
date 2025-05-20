---
title: "getStarred2"
linkTitle: "getStarred2"
categories:
- Lists
description: >
    Returns starred songs, albums and artists.
---

`http://your-server/rest/getStarred2` Since [1.8.0](../../subsonic-versions)

Similar to [`getStarred`](../getstarred), but organizes music according to ID3 tags.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `musicFolderId` | No  |  |    | (Since [1.12.0](../../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getStarred2.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`starred2`](../../responses/starred2) element on success.

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
    "starred2": {
      "artist": [
        {
          "id": "37ec820ca7193e17040c98f7da7c4b51",
          "name": "2 Mello",
          "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
          "albumCount": 1,
          "userRating": 5,
          "artistImageUrl": "https://demo.org/image.jpg",
          "starred": "2017-04-11T10:42:50.842Z"
        }
      ],
      "album": [
        {
          "id": "ad0f112b6dcf83de5e9cae85d07f0d35",
          "name": "8-bit lagerfeuer",
          "artist": "pornophonique",
          "year": 2007,
          "coverArt": "al-ad0f112b6dcf83de5e9cae85d07f0d35_640a93a8",
          "starred": "2023-03-22T01:51:06Z",
          "duration": 1954,
          "playCount": 97,
          "genre": "Hip-Hop",
          "created": "2023-03-10T02:19:35.784818075Z",
          "artistId": "91c3901ac465b9efc439e4be4270c2b6",
          "songCount": 8
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
    "starred2": {
      "artist": [
        {
          "id": "37ec820ca7193e17040c98f7da7c4b51",
          "name": "2 Mello",
          "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
          "albumCount": 1,
          "userRating": 5,
          "artistImageUrl": "https://demo.org/image.jpg",
          "starred": "2017-04-11T10:42:50.842Z"
        }
      ],
      "album": [
        {
          "id": "ad0f112b6dcf83de5e9cae85d07f0d35",
          "name": "8-bit lagerfeuer",
          "artist": "pornophonique",
          "year": 2007,
          "coverArt": "al-ad0f112b6dcf83de5e9cae85d07f0d35_640a93a8",
          "starred": "2023-03-22T01:51:06Z",
          "duration": 1954,
          "playCount": 97,
          "genre": "Hip-Hop",
          "created": "2023-03-10T02:19:35.784818075Z",
          "artistId": "91c3901ac465b9efc439e4be4270c2b6",
          "songCount": 8
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
| `starred2` | [`starred2`](../../responses/starred2) | **Yes** |     | The song |
