---
title: "getSonicSimilarTracks"
linkTitle: "getSonicSimilarTracks [OS]"
OpenSubsonic:
- Addition
categories:
- Browsing
description: >
  Returns similar tracks based on sonic (audio) analysis.
---

`http://your-server/rest/getSonicSimilarTracks`

Returns tracks that are sonically similar to a given track, based on audio analysis. Results are ordered from most similar to least similar. Each result includes a normalized similarity score to the query track. Higher values indicate greater similarity, with `1.0` meaning it is the exact same song and `0.0` meaning the most different.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |  | The ID of the song. |
| `count` | No |  | 10 | Max number of similar tracks to return. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getSonicSimilarTracks.view?id=100&count=5&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a top-level `sonicMatch` array on success.

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
          "similarity": 0.95
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
          "similarity": 0.88
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
| `sonicMatch` | Array of [`sonicMatch`](../../responses/sonicmatch) | **Yes** |  | The similar tracks with per-track similarity |
