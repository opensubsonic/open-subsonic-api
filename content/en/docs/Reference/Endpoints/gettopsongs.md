---
title: "getTopSongs"
linkTitle: "z getTopSongs"
description: >
    Returns top songs for the given artist.
---

## TODO

`http://your-server/rest/getTopSongs` Since [1.13.0](../subsonic-versions)

Returns top songs for the given artist, using data from [last.fm](http://last.fm).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `artist` | Yes |     | The artist name. |
| `count` | No  | 50  | Max number of songs to return. |

Returns a `<subsonic-response>` element with a nested `<topSongs>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/topSongs_example_1.xml).
