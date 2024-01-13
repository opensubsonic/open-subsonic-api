---
title: "searchResult3"
linkTitle: "searchResult3"
description: >
  search3 result.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "artist": [
    {
      "id": "37ec820ca7193e17040c98f7da7c4b51",
      "name": "2 Mello",
      "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
      "albumCount": 1,
      "userRating": 5,
      "artistImageUrl": "https://demo.org/image.jpg"
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
      "played": "2023-03-28T00:45:13Z",
      "created": "2023-03-10T02:19:35.784818075Z",
      "artistId": "91c3901ac465b9efc439e4be4270c2b6",
      "userRating": 4,
      "songCount": 8,
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
      "path": "The New Deal/Live at The Casbah - 2005-04-29/04 - \"polar expedition\".flac",
      "playCount": 8,
      "played": "2023-03-26T22:27:46Z",
      "discNumber": 1,
      "created": "2023-03-14T17:51:22.112827504Z",
      "albumId": "e8a0685e3f3ec6f251649af2b58b8617",
      "artistId": "97e0398acf63f9fb930d7d4ce209a52b",
      "type": "music",
      "isVideo": false
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "artist": [
    {
      "id": "37ec820ca7193e17040c98f7da7c4b51",
      "name": "2 Mello",
      "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
      "albumCount": 1,
      "userRating": 5,
      "artistImageUrl": "https://demo.org/image.jpg"
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
      "created": "2023-03-10T02:19:35.784818075Z",
      "artistId": "91c3901ac465b9efc439e4be4270c2b6",
      "songCount": 8,
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
      "path": "The New Deal/Live at The Casbah - 2005-04-29/04 - \"polar expedition\".flac",
      "playCount": 8,
      "played": "2023-03-26T22:27:46Z",
      "discNumber": 1,
      "created": "2023-03-14T17:51:22.112827504Z",
      "albumId": "e8a0685e3f3ec6f251649af2b58b8617",
      "artistId": "97e0398acf63f9fb930d7d4ce209a52b",
      "type": "music",
      "isVideo": false
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `artist` | Array of [`ArtistID3`](../artistid3) | No |     | Matching artists |
| `album` | Array of [`AlbumID3`](../albumid3) | No |     |  Matching albums  |
| `song` | Array of [`Child`](../child) | No |     | Matching songs |
