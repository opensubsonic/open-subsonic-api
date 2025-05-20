---
title: "deleteBookmark"
linkTitle: "deleteBookmark"
categories:
- Bookmarks
description: >
    Creates or updates a bookmark.
---

`http://your-server/rest/deleteBookmark` Since [1.9.0](../../subsonic-versions)

Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |    | ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/deleteBookmark.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}
