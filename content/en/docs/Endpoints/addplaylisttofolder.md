---
title: "addPlaylistToFolder"
linkTitle: "addPlaylistToFolder [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Adds playlist placements to a folder or the root.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/addPlaylistToFolder`

Adds placements to the authenticated user's playlist organization: files each given playlist in the given folder (or at the root) without touching any of the playlist's other placements. If the placement already exists, its `sortOrder` is updated instead. Like [`movePlaylist`](../moveplaylist), this never modifies the playlists themselves, so it works on any playlist visible to the user, including shared, public, and `readonly` playlists owned by others.

Where [`movePlaylist`](../moveplaylist) *sets* a playlist's location, this endpoint *edits* individual placements — it is how a playlist comes to appear in more than one folder.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistId` | **Yes** | **Yes** | | ID of the playlist to place. Multiple parameters allowed; playlists are placed in the order given. |
| `playlistFolderId` | No | **Yes** | | ID of the destination folder. An empty or omitted value creates an explicit root placement. |
| `sortOrder` | No | **Yes** | | Position among siblings, as a client-assigned integer. Multiple parameters allowed, paired in order with `playlistId` (as `time` pairs with `id` on [`scrobble`](../scrobble)). When omitted, added playlists are placed after the existing contents of the destination. |

When `sortOrder` parameters are supplied, their count must match the number of `playlistId` parameters; otherwise the server returns error `10`. A `playlistId` or `playlistFolderId` that does not exist or is not visible to the authenticated user returns error `70`. See the [extension description](../../extensions/playlistfolders) for ordering semantics and error handling.

### Example

{{< alert color="primary" >}} `http://your-server/rest/addPlaylistToFolder.view?playlistId=playlist-summer&playlistFolderId=folder-dj&sortOrder=1&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

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
