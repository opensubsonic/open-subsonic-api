---
title: "jukeboxPlaylist"
linkTitle: "jukeboxPlaylist"
description: >
  jukeboxPlaylist.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "currentIndex": 7,
  "playing": true,
  "gain": 0.9,
  "position": 67,
  "entry": [
    {
      "id": "300000116",
      "parent": "200000021",
      "title": "Can I Help U?",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "300000116",
      "duration": 103,
      "bitRate": 216,
      "bitDepth": 16,
      "samplingRate": 44100,
      "channelCount": 2,
      "track": 1,
      "year": 2005,
      "genre": "Hip-Hop",
      "size": 2811819,
      "discNumber": 1,
      "suffix": "mp3",
      "contentType": "audio/mpeg",
      "path": "user/Comfort Fit/Forget And Remember/1 - Can I Help U?.mp3"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "currentIndex": 7,
  "playing": true,
  "gain": 0.9,
  "position": 67,
  "entry": [
    {
      "id": "300000116",
      "parent": "200000021",
      "title": "Can I Help U?",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "300000116",
      "duration": 103,
      "bitRate": 216,
      "bitDepth": 16,
      "samplingRate": 44100,
      "channelCount": 2,
      "track": 1,
      "year": 2005,
      "genre": "Hip-Hop",
      "size": 2811819,
      "discNumber": 1,
      "suffix": "mp3",
      "contentType": "audio/mpeg",
      "path": "user/Comfort Fit/Forget And Remember/1 - Can I Help U?.mp3"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field          | Type                         | Req.    | OpenS. | Details                                      |
| -------------- | ---------------------------- | ------- | ------ | -------------------------------------------- |
| `currentIndex` | `int`                        | **Yes** |        | The current index of the song being played   |
| `playing`      | `boolean`                    | **Yes** |        | Whether the queue is currently playing       |
| `gain`         | `float`                      | **Yes** |        | Volume, in a range of [0.0, 1.0]             |
| `position`     | `int`                        | No      |        | The current position of the track in seconds |
| `entry`        | Array of [`Child`](../child) | No      |        | The songs currently enqueued in the jukebox  |
