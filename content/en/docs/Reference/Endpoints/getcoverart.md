---
title: "getCoverArt"
linkTitle: "getCoverArt"
description: >
    Returns a cover art image.
---

`http://your-server/rest/getCoverArt` Since [1.0.0](../subsonic-versions)

Returns a cover art image.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |     | The ID of a song, album or artist. |
| `size` | No  |     | If specified, scale image to this size. |

### Example

{{< alert color="primary" >}} <http://your-server/rest/getCoverArt.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json> {{< /alert >}}

### Result

Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with “text/xml”).
