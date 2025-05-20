---
title: "IndexID3"
linkTitle: "IndexID3"
description: >
  An indexed artist list by ID3 tags.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "name": "C",
  "artist": [
    {
      "id": "100000016",
      "name": "CARNÚN",
      "coverArt": "ar-100000016",
      "albumCount": 1
    },
    {
      "id": "100000027",
      "name": "Chi.Otic",
      "coverArt": "ar-100000027",
      "albumCount": 0
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "name": "C",
  "artist": [
    {
      "id": "100000016",
      "name": "CARNÚN",
      "coverArt": "ar-100000016",
      "albumCount": 1
    },
    {
      "id": "100000027",
      "name": "Chi.Otic",
      "coverArt": "ar-100000027",
      "albumCount": 0
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | `string` | **Yes** |   | Index name |
| `artist` | Array of [`Artist`](../artistid3) | No |   | Artist list |
