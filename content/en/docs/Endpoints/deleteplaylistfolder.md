---
title: "deletePlaylistFolder"
linkTitle: "deletePlaylistFolder [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Deletes an empty playlist folder.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/deletePlaylistFolder`

Deletes an empty folder from the authenticated user's playlist organization.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistFolderId` | **Yes** | **Yes** | | ID of the playlist folder to delete. |

The folder must contain no child folders and no playlists currently visible to the user. A server must return error `0` when the folder is not empty and must not implicitly delete or move its contents. A `playlistFolderId` that does not exist or belongs to another user's tree returns error `70`. See the [extension description](../../extensions/playlistfolders) for the placement lifecycle and error handling.

### Example

{{< alert color="primary" >}} `http://your-server/rest/deletePlaylistFolder.view?playlistFolderId=folder-2026&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

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
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new extension endpoint.
{{< /alert >}}
