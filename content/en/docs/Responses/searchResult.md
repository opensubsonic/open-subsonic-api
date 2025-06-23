---
title: "searchResult"
linkTitle: "searchResult"
description: >
  searchResult.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "offset" : 0,
  "totalHits" : 2,
  "match" : [ {
    "id" : "179",
    "parent" : "178",
    "isDir" : false,
    "title" : "Warten",
    "album" : "Ich will hier raus",
    "artist" : "bilk",
    "track" : 6,
    "year" : 2008,
    "genre" : "AlternRock",
    "coverArt" : "178",
    "size" : 3842176,
    "contentType" : "audio/mpeg",
    "suffix" : "mp3",
    "duration" : 237,
    "bitRate" : 128,
    "path" : "bilk/Ich will hier raus/06 - Warten.mp3",
    "averageRating" : 3.0,
    "playCount" : 1922,
    "created" : "2017-03-12T11:06:04.000Z",
    "albumId" : "16",
    "artistId" : "11",
    "type" : "music"
  }, {
    "id" : "180",
    "parent" : "178",
    "isDir" : false,
    "title" : "Alles",
    "album" : "Ich will hier raus",
    "artist" : "bilk",
    "track" : 1,
    "year" : 2008,
    "genre" : "AlternRock",
    "coverArt" : "178",
    "size" : 3381376,
    "contentType" : "audio/mpeg",
    "suffix" : "mp3",
    "duration" : 209,
    "bitRate" : 128,
    "path" : "bilk/Ich will hier raus/01 - Alles.mp3",
    "averageRating" : 5.0,
    "playCount" : 4480,
    "created" : "2017-03-12T11:06:03.000Z",
    "albumId" : "16",
    "artistId" : "11",
    "type" : "music"
  } ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field       | Type                        | Req.    | OpenS. | Details                       |
|-------------|-----------------------------|---------|--------|-------------------------------|
| `match`     | Array of [`Child`](../child) |         |        | Search results                |
| `offset`    | `int`                       | **Yes** |        | Starting list offset          |
| `totalHits` | `int`                       | **Yes** |        | Total results from the search |
