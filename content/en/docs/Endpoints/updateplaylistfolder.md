---
title: "updatePlaylistFolder"
linkTitle: "updatePlaylistFolder [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Renames, moves, or reorders a playlist folder.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/updatePlaylistFolder`

Updates a folder in the authenticated user's playlist organization: rename it, move it under another folder or to the root, or change its position among its siblings. Playlists are moved into and out of folders with [`movePlaylist`](../moveplaylist).

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistFolderId` | **Yes** | **Yes** | | ID of the playlist folder to update. |
| `name` | No | **Yes** | | The new human-readable name. |
| `parentId` | No | **Yes** | | ID of the new parent folder. An empty value moves the folder to the root. Omit to leave the parent unchanged. |
| `sortOrder` | No | **Yes** | | New position among siblings, as a client-assigned integer. |

At least one optional parameter must be supplied; otherwise the server returns error `10`. A `parentId` that does not exist or belongs to another user's tree returns error `70`; a move that would create a cycle returns error `0`. See the [extension description](../../extensions/playlistfolders) for ordering semantics and error handling.

### Example

{{< alert color="primary" >}} `http://your-server/rest/updatePlaylistFolder.view?playlistFolderId=folder-2026&parentId=folder-dj&sortOrder=1&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

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
