---
title: "getPlayQueue"
linkTitle: "getPlayQueue"
categories:
- Bookmarks
description: >
    Returns the state of the play queue for this user.
---

`http://your-server/rest/getPlayQueue` Since [1.12.0](../../subsonic-versions)

Returns the state of the play queue for this user (as set by `savePlayQueue`). This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getPlayQueue.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`playQueue`](../../responses/playqueue) element on success.

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
    "playQueue": {
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
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "playQueue": {
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
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `playQueue` | [`playQueue`](../../responses/playqueue) | **Yes** |     | The play queue|
