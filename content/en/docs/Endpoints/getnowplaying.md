---
title: "getNowPlaying"
linkTitle: "getNowPlaying"
categories:
- Lists
description: >
    Returns what is currently being played by all users.
---

`http://your-server/rest/getNowPlaying` Since [1.0.0](../../subsonic-versions)

Returns what is currently being played by all users. Takes no extra parameters.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getNowPlaying.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`nowPlaying`](../../responses/nowplaying) element on success.

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
    "nowPlaying": {
      "entry": [
        {
          "id": "300115266",
          "parent": "200147046",
          "title": "Take the Home",
          "isDir": false,
          "isVideo": false,
          "type": "music",
          "albumId": "200147046",
          "album": "How I Learned to Love Our Robot Overlords",
          "artistId": "100002619",
          "artist": "Raggedy Angry",
          "coverArt": "300115266",
          "duration": 227,
          "bitRate": 222,
          "codec": "mp3",
          "bitDepth": 16,
          "samplingRate": 44100,
          "userRating": 3,
          "track": 7,
          "year": 2010,
          "genre": "Industrial",
          "size": 6341039,
          "discNumber": 1,
          "suffix": "mp3",
          "contentType": "audio/mpeg",
          "path": "Raggedy Angry/(2010) How I Learned to Love Our Robot Overlords/1-07 - Take the Home.mp3",
          "username": "user",
          "minutesAgo": 0,
          "playerId": 0
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
    "nowPlaying": {
      "entry": [
        {
          "id": "300115266",
          "parent": "200147046",
          "title": "Take the Home",
          "isDir": false,
          "isVideo": false,
          "type": "music",
          "albumId": "200147046",
          "album": "How I Learned to Love Our Robot Overlords",
          "artistId": "100002619",
          "artist": "Raggedy Angry",
          "coverArt": "300115266",
          "duration": 227,
          "bitRate": 222,
          "codec": "mp3",
          "bitDepth": 16,
          "samplingRate": 44100,
          "userRating": 3,
          "track": 7,
          "year": 2010,
          "genre": "Industrial",
          "size": 6341039,
          "discNumber": 1,
          "suffix": "mp3",
          "contentType": "audio/mpeg",
          "path": "Raggedy Angry/(2010) How I Learned to Love Our Robot Overlords/1-07 - Take the Home.mp3",
          "username": "user",
          "minutesAgo": 0,
          "playerId": 0
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `nowPlaying` | [`nowPlaying`](../../responses/nowplaying) | **Yes** |     | The now playing content |
