---
title: "getVideos"
linkTitle: "getVideos"
categories:
- Browsing
description: >
  Returns all video files.
---

`http://your-server/rest/getVideos` Since [1.8.0](../../subsonic-versions)

Returns all video files.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getVideos.view?&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`videos`](../../responses/videos) element on success.

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
      "videos" : {
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
         } ]
      }
   }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `videos` | [`videos`](../../responses/videos) | **Yes** |     | The videos |
