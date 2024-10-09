---
title: "songsByGenre"
linkTitle: "songsByGenre [OS]"
description: >
  songsByGenre.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "totalCount": 2,
  "song" : [
    {
      "id" : "12",
      "parent" : "10",
      "isDir" : false,
      "title" : "Red&GreenSmoke",
      "album" : "Colorsmoke EP",
      "artist" : "Synthetic",
      "track" : 5,
      "year" : 2007,
      "genre" : "Electronic",
      "coverArt" : "10",
      "size" : 3209340,
      "contentType" : "audio/mpeg",
      "suffix" : "mp3",
      "duration" : 400,
      "bitRate" : 64,
      "path" : "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007(1)/05-Synthetic_-_RedGreenSmokePM20k44khM_64kb.mp3",
      "playCount" : 0,
      "created" : "2022-02-10T23:16:05.491Z",
      "albumId" : "1",
      "artistId" : "1",
      "type" : "music"
    },
    {
      "id" : "13",
      "parent" : "10",
      "isDir" : false,
      "title" : "Red&GreenSmoke",
      "album" : "Colorsmoke EP",
      "artist" : "Synthetic",
      "track" : 5,
      "year" : 2007,
      "genre" : "Electronic",
      "coverArt" : "10",
      "size" : 3209758,
      "contentType" : "audio/mpeg",
      "suffix" : "mp3",
      "duration" : 800,
      "bitRate" : 64,
      "path" : "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007(1)/05-Synthetic_-_RedGreenSmokePM20k22khS_64kb.mp3",
      "playCount" : 0,
      "created" : "2022-02-10T23:16:05.075Z",
      "albumId" : "1",
      "artistId" : "1",
      "type" : "music"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `totalCount` | Int | No |  **Yes**  | Total item count for the request ignoring `size` and `offset` limits. Use `-1` to denote unsupported, unknown or uncounted values. |
| `song` | Array of [`Child`](../child) | No |     | Genre songs|
