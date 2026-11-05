---
title: "videos"
linkTitle: "videos"
description: >
  videos.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "video": [
    {
      "id": "vi-1",
      "parent": "mf-7",
      "title": "SPACE - Magic Fly (1977).ogv",
      "isDir": false,
      "isVideo": true,
      "type": "video",
      "duration": 0,
      "bitRate": 0,
      "playCount": 0,
      "created": "2026-08-01T05:51:47Z",
      "size": 14950742,
      "suffix": "ogv",
      "contentType": "video/ogg",
      "path": "SPACE - Magic Fly (1977).ogv",
      "originalWidth": 400,
      "originalHeight": 300
    },
    {
      "id": "vi-2",
      "parent": "mf-7",
      "title": "Lisa Simpson playing a Beer Jug as her new instrument-fTGVV_4DNYI.mp4",
      "isDir": false,
      "isVideo": true,
      "type": "video",
      "duration": 32,
      "bitRate": 124,
      "playCount": 0,
      "created": "2026-08-01T05:51:47Z",
      "size": 16967352,
      "suffix": "mp4",
      "contentType": "video/mp4",
      "path": "Lisa Simpson playing a Beer Jug as her new instrument-fTGVV_4DNYI.mp4",
      "originalWidth": 1920,
      "originalHeight": 1080
    },
    {
      "id": "vi-3",
      "parent": "mf-7",
      "title": "SPACE   Magic Fly (1977) - https://archive.org/details/SPACE_Magic_Fly_1977.mp4",
      "isDir": false,
      "isVideo": true,
      "type": "video",
      "duration": 193,
      "bitRate": 127,
      "playCount": 0,
      "created": "2026-08-01T05:51:47Z",
      "size": 20084777,
      "suffix": "mp4",
      "contentType": "video/mp4",
      "path": "SPACE_Magic_Fly_1977.mp4",
      "originalWidth": 640,
      "originalHeight": 480
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "video" : [ {
    "id" : "83",
    "isDir" : false,
    "title" : "SPACE - Magic Fly (1977)",
    "size" : 14950742,
    "contentType" : "video/ogg",
    "suffix" : "ogv",
    "path" : "SPACE - Magic Fly (1977).ogv",
    "isVideo" : true,
    "playCount" : 0,
    "created" : "2021-02-23T04:09:57.391Z",
    "type" : "video"
  }, {
    "id" : "82",
    "isDir" : false,
    "title" : "SPACE_Magic_Fly_1977",
    "size" : 20084777,
    "contentType" : "video/mp4",
    "suffix" : "mp4",
    "path" : "SPACE_Magic_Fly_1977.mp4",
    "isVideo" : true,
    "playCount" : 1,
    "created" : "2021-02-23T04:21:29.040Z",
    "type" : "video"
  }, {
    "id" : "81",
    "isDir" : false,
    "title" : "Lisa Simpson playing a Beer Jug as her new instrument",
    "size" : 16967352,
    "contentType" : "video/mp4",
    "suffix" : "mp4",
    "path" : "Lisa Simpson playing a Beer Jug as her new instrument-fTGVV_4DNYI.mp4",
    "isVideo" : true,
    "playCount" : 0,
    "created" : "2021-02-23T04:25:12.040Z",
    "type" : "video"
  } ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `video` | Array of [`Child`](../child) | No |   | List of videos |
