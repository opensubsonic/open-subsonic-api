---
title: "searchResult"
linkTitle: "searchResult"
description: >
  searchResult.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "offset": 0,
  "totalHits": 5,
  "match": [
    {
      "id": "so-1",
      "parent": "al-1",
      "title": "Transfection",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "al-1",
      "album": "Transfection",
      "artistId": "ar-1",
      "artist": "Sweet Fiend",
      "duration": 351,
      "bitRate": 1732,
      "playCount": 1,
      "played": "2026-07-22T01:39:59Z",
      "created": "2026-07-22T00:34:25Z",
      "track": 1,
      "year": 2026,
      "size": 77937235,
      "discNumber": 1,
      "suffix": "flac",
      "contentType": "audio/flac",
      "path": "/media/music/user/Sweet Fiend/Transfection/01 - Transfection.flac",
      "artists": [
        {
          "id": "ar-1",
          "name": "Sweet Fiend"
        }
      ],
      "albumArtists": [
        {
          "id": "ar-1",
          "name": "Sweet Fiend"
        }
      ],
      "displayArtist": "Sweet Fiend",
      "displayAlbumArtist": "Sweet Fiend",
      "mediaType": "song",
      "samplingRate": 44100,
      "channelCount": 2
    },
    {
      "id": "so-3",
      "parent": "al-1",
      "title": "Contrast",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "al-1",
      "album": "Transfection",
      "artistId": "ar-1",
      "artist": "Sweet Fiend",
      "duration": 229,
      "bitRate": 1757,
      "playCount": 3,
      "played": "2026-08-03T02:01:38Z",
      "created": "2026-07-22T00:34:25Z",
      "track": 2,
      "year": 2026,
      "size": 51646259,
      "discNumber": 1,
      "suffix": "flac",
      "contentType": "audio/flac",
      "path": "/media/music/user/Sweet Fiend/Transfection/02 - Contrast.flac",
      "artists": [
        {
          "id": "ar-1",
          "name": "Sweet Fiend"
        }
      ],
      "albumArtists": [
        {
          "id": "ar-1",
          "name": "Sweet Fiend"
        }
      ],
      "displayArtist": "Sweet Fiend",
      "displayAlbumArtist": "Sweet Fiend",
      "mediaType": "song",
      "samplingRate": 44100,
      "channelCount": 2
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "offset" : 0,
  "totalHits" : 2,
  "match" : [ {
    "id" : "179",
    "parent" : "178",
    "isDir" : false,
    "title" : "Warten",
    "album" : "Ich will hier raus",
    "artist" : "bilk",
    "track" : 6,
    "year" : 2008,
    "genre" : "AlternRock",
    "coverArt" : "178",
    "size" : 3842176,
    "contentType" : "audio/mpeg",
    "suffix" : "mp3",
    "duration" : 237,
    "bitRate" : 128,
    "path" : "bilk/Ich will hier raus/06 - Warten.mp3",
    "averageRating" : 3.0,
    "playCount" : 1922,
    "created" : "2017-03-12T11:06:04.000Z",
    "albumId" : "16",
    "artistId" : "11",
    "type" : "music"
  }, {
    "id" : "180",
    "parent" : "178",
    "isDir" : false,
    "title" : "Alles",
    "album" : "Ich will hier raus",
    "artist" : "bilk",
    "track" : 1,
    "year" : 2008,
    "genre" : "AlternRock",
    "coverArt" : "178",
    "size" : 3381376,
    "contentType" : "audio/mpeg",
    "suffix" : "mp3",
    "duration" : 209,
    "bitRate" : 128,
    "path" : "bilk/Ich will hier raus/01 - Alles.mp3",
    "averageRating" : 5.0,
    "playCount" : 4480,
    "created" : "2017-03-12T11:06:03.000Z",
    "albumId" : "16",
    "artistId" : "11",
    "type" : "music"
  } ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field       | Type                        | Req.    | OpenS. | Details                       |
|-------------|-----------------------------|---------|--------|-------------------------------|
| `match`     | Array of [`Child`](../child) |         |        | Search results                |
| `offset`    | `int`                       | **Yes** |        | Starting list offset          |
| `totalHits` | `int`                       | **Yes** |        | Total results from the search. May be greater than the number of `match` entries returned when the `count` parameter limits the page size. |
