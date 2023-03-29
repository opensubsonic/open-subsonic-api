---
title: "getAlbum"
linkTitle: "z getAlbum"
description: >
    Returns details for an album.
---

## TODO

`http://your-server/rest/getAlbum`
Since [1.8.0](../subsonic-versions)

Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The album ID. |

Returns a `<subsonic-response>` element with a nested `<album>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/album_example_1.xml).
