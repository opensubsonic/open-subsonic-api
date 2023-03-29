---
title: "getAlbumInfo2"
linkTitle: "z getAlbumInfo2"
description: >
    Returns album info.
---

## TODO

`http://your-server/rest/getAlbumInfo2` Since [1.14.0](../subsonic-versions)

Similar to `getAlbumInfo`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The album ID. |

Returns a `<subsonic-response>` element with a nested `<albumInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumInfo_example_1.xml).
