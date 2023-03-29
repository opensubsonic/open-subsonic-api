---
title: "getLyrics"
linkTitle: "z getLyrics"
description: >
    Searches for and returns lyrics for a given song.
---

## TODO

`http://your-server/rest/getLyrics` Since [1.2.0](../subsonic-versions)

Searches for and returns lyrics for a given song.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `artist` | No  |     | The artist name. |
| `title` | No  |     | The song title. |

Returns a `<subsonic-response>` element with a nested `<lyrics>` element on success. The `<lyrics>` element is empty if no matching lyrics was found. [Example](http://subsonic.org/pages/inc/api/examples/lyrics_example_1.xml).
