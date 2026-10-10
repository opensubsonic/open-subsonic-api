---
title: "song"
linkTitle: "song"
description: >
  A song.
---

A single song. Carries exactly the fields of a [`Child`](../child), which is the media type every song,
video and podcast episode is returned as; it is documented separately only because `getSong` nests it under
`song` rather than under a list.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
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
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id" : "300000060",
  "parent" : "200000002",
  "isDir" : false,
  "title" : "BrownSmoke",
  "album" : "Colorsmoke EP",
  "artist" : "Synthetic",
  "track" : 1,
  "year" : 2007,
  "genre" : "Electronic",
  "coverArt" : "300000060",
  "size" : 3209886,
  "contentType" : "audio/mpeg",
  "suffix" : "mp3",
  "duration" : 304,
  "bitRate" : 20,
  "path" : "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007(1)/01-Synthetic_-_BrownSmoke.mp3",
  "playCount" : 0,
  "created" : "2021-02-23T04:09:57.391Z",
  "albumId" : "200000002",
  "artistId" : "100000002",
  "type" : "music"
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| ----- | ---- | ---- | ------ | ------- |
| `song` | [`Child`](../child) | **Yes** | | The song |
