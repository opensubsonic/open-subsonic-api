---
title: "albumList2"
linkTitle: "albumList2 [OS]"
description: >
  Album list.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "totalCount": 2,
  "album": [
    {
      "id": "200000021",
      "album": "Forget and Remember",
      "title": "Forget and Remember",
      "name": "Forget and Remember",
      "coverArt": "al-200000021",
      "songCount": 20,
      "created": "2021-07-22T02:09:31+00:00",
      "duration": 4248,
      "playCount": 0,
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "year": 2005,
      "genre": "Hip-Hop"
    },
    {
      "id": "200000012",
      "album": "Buried in Nausea",
      "title": "Buried in Nausea",
      "name": "Buried in Nausea",
      "coverArt": "al-200000012",
      "songCount": 9,
      "created": "2021-02-24T01:44:21+00:00",
      "duration": 1879,
      "playCount": 0,
      "artistId": "100000019",
      "artist": "Various Artists",
      "year": 2012,
      "genre": "Punk"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "album": [
    {
      "id": "200000021",
      "album": "Forget and Remember",
      "title": "Forget and Remember",
      "name": "Forget and Remember",
      "coverArt": "al-200000021",
      "songCount": 20,
      "created": "2021-07-22T02:09:31+00:00",
      "duration": 4248,
      "playCount": 0,
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "year": 2005,
      "genre": "Hip-Hop"
    },
    {
      "id": "200000012",
      "album": "Buried in Nausea",
      "title": "Buried in Nausea",
      "name": "Buried in Nausea",
      "coverArt": "al-200000012",
      "songCount": 9,
      "created": "2021-02-24T01:44:21+00:00",
      "duration": 1879,
      "playCount": 0,
      "artistId": "100000019",
      "artist": "Various Artists",
      "year": 2012,
      "genre": "Punk"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `totalCount` | Int | No |  **Yes**  | Total item count for the request ignoring `size` and `offset` limits. Use `-1` to denote unsupported, unknown or uncounted values. |
| `album` | Array of [`AlbumID3`](../albumid3) | No |     | Artist albums|
