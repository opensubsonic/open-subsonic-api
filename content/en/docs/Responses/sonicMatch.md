---
title: "sonicMatch"
linkTitle: "sonicMatch [OS]"
OpenSubsonic:
- Addition
description: >
  A Child element with an additional normalized similarity field.
---

A `sonicMatch` is a wrapper object with:

- `entry` as a [`Child`](../child) object
- `similarity` (normalized similarity value)

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
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
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `entry` | [`Child`](../child) | **Yes** |  | The child metadata object (id, parent, title, etc.). |
| `similarity` | `number` | **Yes** |  | The normalized similarity score (1.0 = same exact song, 0.0 = most different). For `getSonicSimilarTracks`, relative to the query song. For `findSonicPath`, relative to the starting song. Returns -1 when similarity is not supported by the server. |
