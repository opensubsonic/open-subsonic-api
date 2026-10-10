---
title: "movePlaylist"
linkTitle: "movePlaylist [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Places playlists in a folder or at the root and sets their position.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/movePlaylist`

Places playlists in the authenticated user's playlist organization. This endpoint moves playlists into a folder or to the root and sets their position among siblings. It never modifies the playlists themselves, so it works on any playlist visible to the user, including shared, public, and `readonly` playlists owned by others.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistId` | **Yes** | **Yes** | | ID of the playlist to place. Multiple parameters allowed; playlists are placed in the order given. |
| `playlistFolderId` | No | **Yes** | | ID of the destination folder. An empty value moves the playlists to the root. Omit to keep each playlist in its current location and only change its position. |
| `sortOrder` | No | **Yes** | | Position among siblings, as a client-assigned integer. Multiple parameters allowed, paired in order with `playlistId` (as `time` pairs with `id` on [`scrobble`](../scrobble)). When omitted, moved playlists are placed after the existing contents of the destination. |

At least one of `playlistFolderId` or `sortOrder` must be supplied; otherwise the server returns error `10`. When `sortOrder` parameters are supplied, their count must match the number of `playlistId` parameters; otherwise the server returns error `10`. See the [extension description](../../extensions/playlistfolders) for ordering semantics and error handling.

### Example

{{< alert color="primary" >}} `http://your-server/rest/movePlaylist.view?playlistId=playlist-summer&playlistFolderId=folder-2026&sortOrder=3&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

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
