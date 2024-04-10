---
title: "shares"
linkTitle: "shares"
description: >
  Shares.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "share": [
    {
      "id": "12",
      "url": "http://localhost:8989/share.php?id=12&secret=fXlKyEv3",
      "description": "Forget and Remember (Comfort Fit)",
      "username": "user",
      "created": "2023-03-16T04:13:09+00:00",
      "visitCount": 0,
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
        },
        {
          "id": "300000121",
          "parent": "200000021",
          "title": "Planetary Picknick",
          "isDir": false,
          "isVideo": false,
          "type": "music",
          "albumId": "200000021",
          "album": "Forget and Remember",
          "artistId": "100000036",
          "artist": "Comfort Fit",
          "coverArt": "300000121",
          "duration": 358,
          "bitRate": 238,
          "bitDepth": 16,
          "samplingRate": 44100,
          "channelCount": 2,
          "track": 2,
          "year": 2005,
          "genre": "Hip-Hop",
          "size": 10715592,
          "discNumber": 1,
          "suffix": "mp3",
          "contentType": "audio/mpeg",
          "path": "user/Comfort Fit/Forget And Remember/2 - Planetary Picknick.mp3"
        }
      ]
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "share": [
    {
      "id": "12",
      "url": "http://localhost:8989/share.php?id=12&secret=fXlKyEv3",
      "description": "Forget and Remember (Comfort Fit)",
      "username": "user",
      "created": "2023-03-16T04:13:09+00:00",
      "visitCount": 0,
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
        },
        {
          "id": "300000121",
          "parent": "200000021",
          "title": "Planetary Picknick",
          "isDir": false,
          "isVideo": false,
          "type": "music",
          "albumId": "200000021",
          "album": "Forget and Remember",
          "artistId": "100000036",
          "artist": "Comfort Fit",
          "coverArt": "300000121",
          "duration": 358,
          "bitRate": 238,
          "bitDepth": 16,
          "samplingRate": 44100,
          "channelCount": 2,
          "track": 2,
          "year": 2005,
          "genre": "Hip-Hop",
          "size": 10715592,
          "discNumber": 1,
          "suffix": "mp3",
          "contentType": "audio/mpeg",
          "path": "user/Comfort Fit/Forget And Remember/2 - Planetary Picknick.mp3"
        }
      ]
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `share` | Array of [`share`](../share) | **Yes** |   | A list of share |
