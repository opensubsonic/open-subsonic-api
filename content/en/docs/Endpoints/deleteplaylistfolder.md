---
title: "deletePlaylistFolder"
linkTitle: "deletePlaylistFolder [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Deletes a playlist folder, releasing its contents.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/deletePlaylistFolder`

Deletes a folder from the authenticated user's playlist organization. The folder does not have to be empty: deleting it removes the folder and the placements it held, re-parents its child folders to the deleted folder's parent, and touches nothing else. Playlists are never modified or deleted by this endpoint — a playlist placed nowhere else simply reappears at the implicit root.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistFolderId` | **Yes** | **Yes** | | ID of the playlist folder to delete. |

Whether to confirm before deleting a non-empty folder, or to forbid it, is a client UX decision; clients are free to be stricter than the API. A `playlistFolderId` that does not exist or belongs to another user's tree returns error `70`. See the [extension description](../../extensions/playlistfolders) for the placement lifecycle and error handling.

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
