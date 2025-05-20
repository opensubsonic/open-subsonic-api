---
title: "jukeboxControl"
linkTitle: "jukeboxControl"
categories:
- Jukebox
description: >
    Controls the jukebox, i.e., playback directly on the server's audio hardware.
---

`http://your-server/rest/jukeboxControl` Since [1.2.0](../../subsonic-versions)

Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `action` | **Yes** |  |   | The operation to perform. Must be one of: `get`, `status` (since [1.7.0](../../subsonic-versions)), `set` (since [1.7.0](../../subsonic-versions)), `start`, `stop`, `skip`, `add`, `clear`, `remove`, `shuffle`, `setGain` |
| `index` | No  |  |   | Used by `skip` and `remove`. Zero-based index of the song to skip to or remove. |
| `offset` | No  |  |   | (Since [1.7.0](../../subsonic-versions)) Used by `skip`. Start playing this many seconds into the track. |
| `id` | No  | |    | Used by `add` and `set`. ID of song to add to the jukebox playlist. Use multiple `id` parameters to add many songs in the same request. (`set` is similar to a `clear` followed by a `add`, but will not change the currently playing track.) |
| `gain` | No  |  |   | Used by `setGain` to control the playback volume. A float value between 0.0 and 1.0. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/jukeboxControl.view?action=get&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested :

- [`jukeboxStatus`](../../responses/jukeboxstatus) for all actions but `get`
- [`jukeboxPlaylist`](../../responses/jukeboxplaylist) for `get` action

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic (Status)" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "jukeboxStatus": {
      "currentIndex": 7,
      "playing": true,
      "gain": 0.9,
      "position": 67
    }
  }
}
{{< /tab >}}
{{< tab header="OpenSubsonic (Playlist)" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "jukeboxPlaylist": {
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
  }
}
{{< /tab >}}
{{< tab header="Subsonic (Status)" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "jukeboxStatus": {
      "currentIndex": 7,
      "playing": true,
      "gain": 0.9,
      "position": 67
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic (Playlist)" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "jukeboxPlaylist": {
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
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `jukeboxStatus` | [`jukeboxstatus`](../../responses/jukeboxstatus) | **Yes** |     | The jukeboxstatus |
| `jukeboxPlaylist` | [`jukeboxPlaylist`](../../responses/jukeboxplaylist) | **Yes** |     | The jukeboxstatus |
