---
title: "findPathResult"
linkTitle: "findPathResult"
description: >
  The result of finding a path between two songs based on audio similarity.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "path": [
    {
      "itemId": "afc60df24d5bf7a6af1d0ab589d99ea5",
      "title": "Song Title A",
      "album": "Album A",
      "author": "Artist A",
      "energy": 0.08827668,
      "key": "C#",
      "scale": "minor",
      "tempo": 144.23077,
      "moodVector": "jazz:0.689,instrumental:0.521,blues:0.513,rock:0.508,funk:0.507",
      "otherFeatures": "danceable:0.59,aggressive:0.57,happy:0.61,party:0.58,relaxed:0.59,sad:0.50",
      "embeddingVector": [2.643, 2.612, -0.061]
    },
    {
      "itemId": "362b9d2b5905260e2a8185610583314c",
      "title": "Song Title B",
      "album": "Album B",
      "author": "Artist B",
      "energy": 0.09741017,
      "key": "D",
      "scale": "minor",
      "tempo": 110.29412,
      "moodVector": "jazz:0.700,instrumental:0.521,guitar:0.510,blues:0.508,rock:0.506",
      "otherFeatures": "danceable:0.56,aggressive:0.55,happy:0.58,party:0.56,relaxed:0.59,sad:0.50",
      "embeddingVector": [2.155, 2.900, -0.852]
    }
  ],
  "totalDistance": 2.834572709211506
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `path` | Array of [`audioFeatureTrack`](../audiofeaturetrack) | **Yes** | | The ordered list of tracks forming the path from start to end song. |
| `totalDistance` | `number` | **Yes** | | The total distance (sum of pairwise distances) of the computed path. |
