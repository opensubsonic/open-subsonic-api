---
title: "deletePlaylist"
linkTitle: "deletePlaylist"
categories:
- Playlists
description: >
    Deletes a saved playlist.
---

`http://your-server/rest/deletePlaylist` Since [1.2.0](../../subsonic-versions)

Deletes a saved playlist.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |    | ID of the playlist to delete, as obtained by [`getPlaylists`](../getplaylists). |

### Example

{{< alert color="primary" >}} `http://your-server/rest/deletePlaylist.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
