---
title: "createPlaylist"
linkTitle: "z createPlaylist"
description: >
    Creates (or updates) a playlist.
---

## TODO

`http://your-server/rest/createPlaylist` Since [1.2.0](../subsonic-versions)

Creates (or updates) a playlist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `playlistId` | Yes (if updating) |     | The playlist ID. |
| `name` | Yes (if creating) |     | The human-readable name of the playlist. |
| `songId` | No  |     | ID of a song in the playlist. Use one `songId` parameter for each song in the playlist. |

Since [1.14.0](../subsonic-versions) the newly created/updated playlist is returned. In earlier versions an empty `<subsonic-response>` element is returned.
