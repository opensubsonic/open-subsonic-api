---
title: "getPlayQueue"
linkTitle: "z getPlayQueue"
description: >
    Returns the state of the play queue for this user.
---

## TODO

`http://your-server/rest/getPlayQueue` Since [1.12.0](../subsonic-versions)

Returns the state of the play queue for this user (as set by `savePlayQueue`). This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

Returns a `<subsonic-response>` element with a nested `<playQueue>` element on success, or an empty `<subsonic-response>` if no play queue has been saved. [Example](http://subsonic.org/pages/inc/api/examples/playQueue_example_1.xml).
