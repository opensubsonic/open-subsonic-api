---
title: "getPlaylistFolders"
linkTitle: "getPlaylistFolders [OS]"
OpenSubsonic:
  - Extension
categories:
  - Playlists
description: >
  Returns all folders in a user's playlist organization.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/getPlaylistFolders`

Returns all folders in a user's playlist organization as a flat list. Clients build the hierarchy by matching each folder's `parentId` to another folder's `id`, and place playlists using the `playlistFolderId` returned by [`getPlaylists`](../getplaylists).

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | No | **Yes** | | If specified, return folders for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getPlaylistFolders.view?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`playlistFolders`](../../responses/playlistfolders) element on success.

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
    "playlistFolders": {
      "playlistFolder": [
        {
          "id": "folder-dj",
          "name": "DJ Sets",
          "sortOrder": 1
        },
        {
          "id": "folder-2026",
          "name": "2026",
          "parentId": "folder-dj",
          "sortOrder": 1
        }
      ]
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
