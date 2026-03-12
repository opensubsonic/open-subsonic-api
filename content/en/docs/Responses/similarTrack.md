---
title: "similarTrack"
linkTitle: "similarTrack"
description: >
  A similar track with distance information.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "itemId": "362b9d2b5905260e2a8185610583314c",
  "title": "Song Title",
  "album": "Album Name",
  "author": "Artist Name",
  "distance": 0.010419189929962158
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
| `distance` | `number` | **Yes** | | The distance (similarity measure) from the query track. Lower values indicate higher similarity. |
