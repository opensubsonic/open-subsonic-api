---
title: "getAlbumInfo"
linkTitle: "z getAlbumInfo"
description: >
    Returns album info.
---

## TODO

`http://your-server/rest/getAlbumInfo` Since [1.14.0](../subsonic-versions)

Returns album notes, image URLs etc, using data from [last.fm](http://last.fm).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The album or song ID. |

Returns a `<subsonic-response>` element with a nested `<albumInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumInfo_example_1.xml).
