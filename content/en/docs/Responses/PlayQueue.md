---
title: "PlayQueue"
linkTitle: "PlayQueue"
description: >
  NowPlayingEntry.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "current": "1234",
  "position": 1000,
  "username": "user",
  "changed": "2023-03-10T02:19:35.784818075Z",
  "changedBy": "example client",
  "entry": [
    {
      "id": "1234",
      "parent": "200000021",
      "title": "Can I Help U?",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "1234",
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
  "current": "1234",
  "position": 1000,
  "username": "user",
  "changed": "2023-03-10T02:19:35.784818075Z",
  "changedBy": "example client",
  "entry": [
    {
      "id": "1234",
      "parent": "200000021",
      "title": "Can I Help U?",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "1234",
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

{{< alert color="primary" title="OpenSubsonic" >}}
Errata: In the original spec, `current` is required to be an `int`.
However, as `child` ids are strings, this is updated to note that the id should be a string to be consistent.
{{< /alert >}}

| Field       | Type                         | Req.    | OpenS. | Details                                             |
| ----------- | ---------------------------- | ------- | ------ | --------------------------------------------------- |
| `current`   | `string`                     | No      |        | ID of currently playing track                       |
| `position`  | `long`                       | No      |        | Position in milliseconds of currently playing track |
| `username`  | `string`                     | **Yes** |        | The user this queue belongs to                      |
| `changed`   | `string`                     | **Yes** |        | Date modified [ISO 8601]                            |
| `changedBy` | `string`                     | **Yes** |        | Name of client app                                  |
| `entry`     | Array of [`Child`](../child) | No      |        | The list of songs in the queue                      |
