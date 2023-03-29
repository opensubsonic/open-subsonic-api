---
title: "getPlaylist"
linkTitle: "z getPlaylist"
description: >
    Returns a listing of files in a saved playlist.
---

## TODO

`http://your-server/rest/getPlaylist` Since [1.0.0](../subsonic-versions)

Returns a listing of files in a saved playlist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | yes |     | ID of the playlist to return, as obtained by `getPlaylists`. |

Returns a `<subsonic-response>` element with a nested `<playlist>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/playlist_example_1.xml).

