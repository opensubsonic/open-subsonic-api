---
title: "getShares"
linkTitle: "getShares"
categories:
- Sharing
description: >
    Returns information about shared media this user is allowed to manage.
---

`http://your-server/rest/getShares` Since [1.6.0](../../subsonic-versions)

Returns information about shared media this user is allowed to manage. Takes no extra parameters.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getShares.view?&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`shares`](../../responses/shares) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
    "shares": {
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
              "codec": "mp3",
              "bitDepth": 16,
              "samplingRate": 44100,
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
              "codec": "mp3",
              "bitDepth": 16,
              "samplingRate": 44100,
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
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "shares": {
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
              "codec": "mp3",
              "samplingRate": 44100,
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
              "codec": "mp3",
              "bitDepth": 16,
              "samplingRate": 44100,
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
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `shares` | [`shares`](../../responses/shares) | **Yes** |     | The shares |
