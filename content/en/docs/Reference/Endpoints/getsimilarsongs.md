---
title: "getSimilarSongs"
linkTitle: "z getSimilarSongs"
description: >
    Returns a random collection of songs from the given artist and similar artists.
---

## TODO


`http://your-server/rest/getSimilarSongs` Since [1.11.0](../subsonic-versions)

Returns a random collection of songs from the given artist and similar artists, using data from [last.fm](http://last.fm). Typically used for artist radio features.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist, album or song ID. |
| `count` | No  | 50  | Max number of songs to return. |

Returns a `<subsonic-response>` element with a nested `<similarSongs>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/similarSongs_example_1.xml).
