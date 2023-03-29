---
title: "getSimilarSongs2"
linkTitle: "z getSimilarSongs2"
description: >
    Returns a random collection of songs from the given artist and similar artists.
---

## TODO

`http://your-server/rest/getSimilarSongs2` Since [1.11.0](../subsonic-versions)

Similar to `getSimilarSongs`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist ID. |
| `count` | No  | 50  | Max number of songs to return. |

Returns a `<subsonic-response>` element with a nested `<similarSongs2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/similarSongs2_example_1.xml).
