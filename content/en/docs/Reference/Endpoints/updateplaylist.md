---
title: "updatePlaylist"
linkTitle: "z updatePlaylist"
description: >
    Updates a playlist. Only the owner of a playlist is allowed to update it.
---

## TODO


`http://your-server/rest/updatePlaylist` Since [1.8.0](../subsonic-versions)

Updates a playlist. Only the owner of a playlist is allowed to update it.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `playlistId` | Yes |     | The playlist ID. |
| `name` | No  |     | The human-readable name of the playlist. |
| `comment` | No  |     | The playlist comment. |
| `public` | No  |     | `true` if the playlist should be visible to all users, `false` otherwise. |
| `songIdToAdd` | No  |     | Add this song with this ID to the playlist. Multiple parameters allowed. |
| `songIndexToRemove` | No  |     | Remove the song at this position in the playlist. Multiple parameters allowed. |

Returns an empty `<subsonic-response>` element on success.
