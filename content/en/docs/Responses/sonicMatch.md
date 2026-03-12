---
title: "sonicMatch"
linkTitle: "sonicMatch [OS]"
OpenSubsonic:
- Addition
description: >
  A Child element with an additional normalized distance field.
---

A `sonicMatch` is a [`Child`](../child) element extended with a `distance` field.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
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
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| All [`Child`](../child) fields | | | | All fields from the [`Child`](../child) type. |
| `distance` | `number` | **Yes** |  | The normalized distance from the reference song (0.0 = identical, 1.0 = most dissimilar). |
