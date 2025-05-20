---
title: "directory"
linkTitle: "directory"
description: >
  Directory.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
    "id": "1",
    "name": "music",
    "child": [
        {
            "id": "100000016",
            "parent": "1",
            "isDir": true,
            "title": "CARNÚN",
            "artist": "CARNÚN",
            "coverArt": "ar-100000016"
        },
        {
            "id": "100000027",
            "parent": "1",
            "isDir": true,
            "title": "Chi.Otic",
            "artist": "Chi.Otic",
            "coverArt": "ar-100000027"
        }
    ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
    "id": "1",
    "name": "music",
    "child": [
        {
            "id": "100000016",
            "parent": "1",
            "isDir": true,
            "title": "CARNÚN",
            "artist": "CARNÚN",
            "coverArt": "ar-100000016"
        },
        {
            "id": "100000027",
            "parent": "1",
            "isDir": true,
            "title": "Chi.Otic",
            "artist": "Chi.Otic",
            "coverArt": "ar-100000027"
        }
    ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | The id |
| `parent` | `string` | No  |     | Parent item |
| `name` | `string` | **Yes**  |     | The directory name |
| `starred` | `string` | No  |     | Starred date [ISO 8601] |
| `userRating` | `int` | No  |     | The user rating [1-5] |
| `averageRating` | `number` | No  |     | The average rating [1.0-5.0] |
| `playCount` | `long` | No  |     | The play count |
| `child` | Array of [`Child`](../child) | No |     | The directory content |
