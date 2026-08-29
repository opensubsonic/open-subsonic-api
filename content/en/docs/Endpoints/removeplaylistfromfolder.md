---
title: "removePlaylistFromFolder"
linkTitle: "removePlaylistFromFolder [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Removes playlist placements from a folder or the root.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/removePlaylistFromFolder`

Removes individual placements (this playlist is in this folder) from the authenticated user's playlist organization. Removing a playlist's last placement returns it to the implicit root. Playlists themselves are never modified or deleted. You can remove explcit root placement of a playlist, but never implicit root placement.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistId` | **Yes** | **Yes** | | ID of the playlist to unfile. Multiple parameters allowed. |
| `playlistFolderId` | No | **Yes** | | ID of the folder to remove the playlists from. An empty or omitted value removes explicit root placements. |

Removing a placement that does not exist is not an error — the endpoint is idempotent. A `playlistId` or `playlistFolderId` that does not exist or is not visible to the authenticated user returns error `70`. See the [extension description](../../extensions/playlistfolders) for the placement lifecycle and error handling.

### Example

{{< alert color="primary" >}} `http://your-server/rest/removePlaylistFromFolder.view?playlistId=playlist-summer&playlistFolderId=folder-dj&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

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
