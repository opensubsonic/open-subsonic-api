---
title: "similarTracksResult"
linkTitle: "similarTracksResult"
description: >
  List of similar tracks.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "track": [
    {
      "itemId": "362b9d2b5905260e2a8185610583314c",
      "title": "Song Title A",
      "album": "Album A",
      "author": "Artist A",
      "distance": 0.010419189929962158
    },
    {
      "itemId": "7c6f860f7e8f664713a07a735c93427a",
      "title": "Song Title B",
      "album": "Album B",
      "author": "Artist B",
      "distance": 0.01155698299407959
    },
    {
      "itemId": "67b7ed96b90dbbcdd105f3712697cc5e",
      "title": "Song Title C",
      "album": "Album C",
      "author": "Artist C",
      "distance": 0.013168931007385254
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `track` | Array of [`similarTrack`](../similartrack) | No | | List of similar tracks with distance information. |
