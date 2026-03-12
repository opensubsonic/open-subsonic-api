---
title: "sonicSimilarTracksResult"
linkTitle: "sonicSimilarTracksResult [OS]"
OpenSubsonic:
- Addition
description: >
  The result of a sonic similar tracks search.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "sonicMatch": [
    {
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
      "path": "Synthetic/Synthetic_-_Colorsmoke_EP/04-Synthetic_-_BrownSmoke.wma",
      "distance": 0.05
    },
    {
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
      "path": "Synthetic/Synthetic_-_Colorsmoke_EP/05-Synthetic_-_RedGreenSmoke.mp3",
      "distance": 0.12
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `sonicMatch` | Array of [`sonicMatch`](../sonicmatch) | No |  | A list of similar songs ordered by distance. |
