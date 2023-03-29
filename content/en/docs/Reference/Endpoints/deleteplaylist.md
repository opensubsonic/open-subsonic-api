---
title: "updatePlaylist"
linkTitle: "z updatePlaylist"
description: >
    Updates a playlist. Only the owner of a playlist is allowed to update it.
---

## TODO

`http://your-server/rest/deletePlaylist` Since [1.2.0](../subsonic-versions)

Deletes a saved playlist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | yes |     | ID of the playlist to delete, as obtained by `getPlaylists`. |

Returns an empty `<subsonic-response>` element on success.
