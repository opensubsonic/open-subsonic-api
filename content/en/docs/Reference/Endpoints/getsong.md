---
title: "getSong"
linkTitle: "z getSong"
description: >
    Returns details for a song.
---

## TODO

`http://your-server/rest/getSong` Since [1.8.0](../subsonic-versions)

Returns details for a song.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The song ID. |

Returns a `<subsonic-response>` element with a nested `<song>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/song_example_1.xml).
