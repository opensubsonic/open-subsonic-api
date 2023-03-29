---
title: "savePlayQueue"
linkTitle: "z savePlayQueue"
description: >
    Saves the state of the play queue for this user.
---

## TODO

`http://your-server/rest/savePlayQueue` Since [1.12.0](../subsonic-versions)

Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of a song in the play queue. Use one `id` parameter for each song in the play queue. |
| `current` | No  |     | The ID of the current playing song. |
| `position` | No  |     | The position in milliseconds within the currently playing song. |

Returns an empty `<subsonic-response>` element on success.
