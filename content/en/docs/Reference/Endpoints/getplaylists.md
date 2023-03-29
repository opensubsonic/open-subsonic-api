---
title: "getPlaylists"
linkTitle: "z getPlaylists"
description: >
    Returns all playlists a user is allowed to play.
---

## TODO

`http://your-server/rest/getPlaylists` Since [1.0.0](../subsonic-versions)

Returns all playlists a user is allowed to play.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | no  |     | (Since [1.8.0](../subsonic-versions)) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used. |

Returns a `<subsonic-response>` element with a nested `<playlists>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/playlists_example_1.xml).

