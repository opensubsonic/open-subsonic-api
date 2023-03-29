---
title: "getArtistInfo"
linkTitle: "z getArtistInfo"
description: >
    Returns artist info.
---

## TODO

`http://your-server/rest/getArtistInfo` Since [1.11.0](../subsonic-versions)

Returns artist info with biography, image URLs and similar artists, using data from [last.fm](http://last.fm).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist, album or song ID. |
| `count` | No  | 20  | Max number of similar artists to return. |
| `includeNotPresent` | No  | false | Whether to return artists that are not present in the media library. |

Returns a `<subsonic-response>` element with a nested `<artistInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artistInfo_example_1.xml).

