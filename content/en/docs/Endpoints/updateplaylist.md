---
title: "updatePlaylist"
linkTitle: "updatePlaylist"
categories:
- Playlists
description: >
    Updates a playlist. Only the owner of a playlist is allowed to update it.
---

`http://your-server/rest/updatePlaylist` Since [1.8.0](../../subsonic-versions)

Updates a playlist. Only the owner of a playlist is allowed to update it.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `playlistId` | **Yes** |  |    | The playlist ID. |
| `name` | No  |  |    | The human-readable name of the playlist. |
| `comment` | No  | |     | The playlist comment. |
| `public` | No  |  |    | `true` if the playlist should be visible to all users, `false` otherwise. |
| `songIdToAdd` | No  |  |    | Add this song with this ID to the playlist. Multiple parameters allowed. |
| `songIndexToRemove` | No  | |     | Remove the song at this position in the playlist. Multiple parameters allowed. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/updatePlaylist.view?playlistId=123&name=test&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
