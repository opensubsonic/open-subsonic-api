---
title: "getArtist"
linkTitle: "z getArtist"
description: >
    Returns details for an artist.
---

## TODO

`http://your-server/rest/getArtist` Since [1.8.0](../subsonic-versions)

Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist ID. |

Returns a `<subsonic-response>` element with a nested `<artist>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artist_example_1.xml).
