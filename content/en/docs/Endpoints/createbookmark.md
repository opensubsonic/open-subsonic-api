---
title: "createBookmark"
linkTitle: "createBookmark"
categories:
- Bookmarks
description: >
    Creates or updates a bookmark.
---

`http://your-server/rest/createBookmark` Since [1.9.0](../../subsonic-versions)

Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |   | ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten. |
| `position` | **Yes** |   |  | The position (in milliseconds) within the media file. |
| `comment` | No  |  |   | A user-defined comment. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/createBookmark.view?id=123&position=12&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
