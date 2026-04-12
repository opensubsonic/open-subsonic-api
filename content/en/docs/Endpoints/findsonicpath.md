---
title: "findSonicPath"
linkTitle: "findSonicPath [OS]"
OpenSubsonic:
- Addition
categories:
- Browsing
description: >
  Finds a sonic path between two songs based on audio similarity.
---

`http://your-server/rest/findSonicPath`

Finds a path of songs connecting a start song to an end song, navigating through audio similarity space.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `startSongId` | **Yes** |  |  | The ID of the starting song. |
| `endSongId` | **Yes** |  |  | The ID of the ending/target song. |
| `count` | No |  | 25 | Maximum number of songs in the path. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/findSonicPath.view?startSongId=100&endSongId=200&count=5&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a top-level `sonicMatch` array on success. The returned path MUST contain the start song as the first entry and the end song as the last entry.

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
    "sonicMatch": [
        {
          "entry": {
            "id": "300000060",
            "parent": "200000002",
            "title": "BrownSmoke",
            "isDir": false,
            "isVideo": false,
            "type": "music",
            "albumId": "200000002",
            "album": "Colorsmoke EP",
            "artistId": "100000002",
            "artist": "Synthetic",
            "coverArt": "300000060",
            "duration": 304,
            "bitRate": 20,
            "bitDepth": 16,
            "samplingRate": 44100,
            "channelCount": 2,
            "track": 4,
            "year": 2007,
            "genre": "Electronic",
            "size": 792375,
            "discNumber": 1,
            "suffix": "wma",
            "contentType": "audio/x-ms-wma",
            "path": "Synthetic/Synthetic_-_Colorsmoke_EP/04-Synthetic_-_BrownSmoke.wma"
          },
          "similarity": 1.0
        },
        {
          "entry": {
            "id": "300000055",
            "parent": "200000002",
            "title": "Red&GreenSmoke",
            "isDir": false,
            "isVideo": false,
            "type": "music",
            "albumId": "200000002",
            "album": "Colorsmoke EP",
            "artistId": "100000002",
            "artist": "Synthetic",
            "coverArt": "300000055",
            "duration": 400,
            "bitRate": 64,
            "bitDepth": 16,
            "samplingRate": 44100,
            "channelCount": 2,
            "track": 5,
            "year": 2007,
            "genre": "Electronic",
            "size": 3209886,
            "discNumber": 1,
            "suffix": "mp3",
            "contentType": "audio/mpeg",
            "path": "Synthetic/Synthetic_-_Colorsmoke_EP/05-Synthetic_-_RedGreenSmoke.mp3"
          },
          "similarity": 0.45
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `sonicMatch` | Array of [`sonicMatch`](../../responses/sonicmatch) | **Yes** |  | The ordered sonic path results with per-track similarity. The path begins with `startSongId` and ends with `endSongId`. |
