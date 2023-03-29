---
title: "artist"
linkTitle: "artist"
description: >
  Artist details.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}} {
    "id": "100000002",
    "name": "Synthetic",
    "coverArt": "ar-100000002",
    "albumCount": 1,
    "starred": "2021-02-22T05:54:18Z"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}{
    "id": "100000002",
    "name": "Synthetic",
    "coverArt": "ar-100000002",
    "albumCount": 1,
    "starred": "2021-02-22T05:54:18Z"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | Artist id |
| `name` | `string` |  **Yes** |     | Artist name |
| `artistImageUrl` | `string` | No|     | Artist image url |
| `starred` | `string` | No |     | Artist starred date [ISO 8601] |
| `userRating` | `int` | No |     | Artist rating [1-5] |
| `averageRating` | `double` | No |     | Artist average rating [1.0-5.0]|
| `album` | Array of [`AlbumID3`](../albumid3) | No |     | Artist albums|
