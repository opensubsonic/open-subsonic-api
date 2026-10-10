---
title: "createPlaylistFolder"
linkTitle: "createPlaylistFolder [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Creates a playlist folder.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/createPlaylistFolder`

Creates a playlist folder in the authenticated user's playlist organization.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `name` | **Yes** | **Yes** | | The human-readable name of the playlist folder. |
| `parentId` | No | **Yes** | | ID of the parent playlist folder. Omit to create a root-level folder. |
| `sortOrder` | No | **Yes** | | Position among siblings, as a client-assigned integer. If omitted, the server assigns a position after the existing siblings. |

A `parentId` that does not exist or belongs to another user's tree returns error `70`, so that a user cannot probe for folder IDs in other users' trees. See the [extension description](../../extensions/playlistfolders) for ordering semantics and error handling.

### Example

{{< alert color="primary" >}} `http://your-server/rest/createPlaylistFolder.view?name=2026&parentId=folder-dj&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`playlistFolder`](../../responses/playlistfolder) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "playlistFolder": {
      "id": "folder-2026",
      "name": "2026",
      "parentId": "folder-dj",
      "sortOrder": 2
    }
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
