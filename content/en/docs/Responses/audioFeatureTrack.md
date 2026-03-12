---
title: "audioFeatureTrack"
linkTitle: "audioFeatureTrack"
description: >
  A track with detailed audio features.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "itemId": "afc60df24d5bf7a6af1d0ab589d99ea5",
  "title": "Song Title",
  "album": "Album Name",
  "author": "Artist Name",
  "energy": 0.08827668,
  "key": "C#",
  "scale": "minor",
  "tempo": 144.23077,
  "moodVector": "jazz:0.689,instrumental:0.521,blues:0.513,rock:0.508,funk:0.507",
  "otherFeatures": "danceable:0.59,aggressive:0.57,happy:0.61,party:0.58,relaxed:0.59,sad:0.50",
  "embeddingVector": [2.643, 2.612, -0.061, "..."]
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `itemId` | `string` | **Yes** | | The unique identifier of the track. |
| `title` | `string` | **Yes** | | The title of the track. |
| `album` | `string` | **Yes** | | The album name. |
| `author` | `string` | **Yes** | | The author/artist of the track. |
| `embeddingVector` | `number[]` | No | | The audio embedding vector for similarity calculations. |
| `energy` | `number` | No | | The energy level of the track. |
| `key` | `string` | No | | The musical key of the track (e.g., C#, D, F). |
| `scale` | `string` | No | | The musical scale (e.g., minor, major). |
| `tempo` | `number` | No | | The tempo of the track in BPM. |
| `moodVector` | `string` | No | | A comma-separated string of mood tags with their confidence scores. |
| `otherFeatures` | `string` | No | | A comma-separated string of additional audio features with their scores. |
