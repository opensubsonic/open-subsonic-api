---
title: "search"
linkTitle: "search"
categories:
- Searching
description: >
  Returns a listing of files matching the given search criteria. Supports paging through the result.
---

`http://your-server/rest/search` Since [1.0.0](../../subsonic-versions)

Deprecated since [1.4.0](../../subsonic-versions), use [`search2`](../search2) instead.

Returns a listing of files matching the given search criteria. Supports paging through the result.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `artist` | No  ||       | Artist to search for. |
| `album` | No  | |      | Album to searh for. |
| `title` | No  | |      | Song title to search for. |
| `any` | No  |  |     | Searches all fields. |
| `count` | No  | |  20  | Maximum number of results to return. |
| `offset` | No  | |  0   | Search result offset. Used for paging. |
| `newerThan` | No  | |      | Only return matches that are newer than this. Given as milliseconds since 1970. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/search.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`searchResult`](../../responses/searchresult) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
   "subsonic-response" : {
      "status" : "ok",
      "version" : "1.16.1",
      "searchResult" : {
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
   }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `searchResult` | [`searchResult`](../../responses/searchresult) | **Yes** |     | The result |
