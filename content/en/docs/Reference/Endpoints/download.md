---
title: "download"
linkTitle: "download"
description: >
    Downloads a given media file.
---

`http://your-server/rest/download` Since [1.0.0](../../subsonic-versions)

Downloads a given media file. Similar to [stream](../stream), but this method returns the original media data without transcoding or downsampling.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** | |     | A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory. |

### Example

{{< alert color="primary" >}} <http://your-server/rest/download.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json> {{< /alert >}}

### Result

Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with “text/xml”).
