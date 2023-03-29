---
title: "jukeboxControl"
linkTitle: "z jukeboxControl"
description: >
    Controls the jukebox, i.e., playback directly on the server's audio hardware.
---

## TODO

`http://your-server/rest/jukeboxControl` Since [1.2.0](../subsonic-versions)

Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `action` | Yes |     | The operation to perform. Must be one of: `get`, `status` (since [1.7.0](../subsonic-versions)), `set` (since [1.7.0](../subsonic-versions)), `start`, `stop`, `skip`, `add`, `clear`, `remove`, `shuffle`, `setGain` |
| `index` | No  |     | Used by `skip` and `remove`. Zero-based index of the song to skip to or remove. |
| `offset` | No  |     | (Since [1.7.0](../subsonic-versions)) Used by `skip`. Start playing this many seconds into the track. |
| `id` | No  |     | Used by `add` and `set`. ID of song to add to the jukebox playlist. Use multiple `id` parameters to add many songs in the same request. (`set` is similar to a `clear` followed by a `add`, but will not change the currently playing track.) |
| `gain` | No  |     | Used by `setGain` to control the playback volume. A float value between 0.0 and 1.0. |

Returns a `<jukeboxStatus>` element on success, unless the `get` action is used, in which case a nested `<jukeboxPlaylist>` element is returned. [Example 1](http://subsonic.org/pages/inc/api/examples/jukeboxStatus_example_1.xml). [Example 2](http://subsonic.org/pages/inc/api/examples/jukeboxPlaylist_example_1.xml).

