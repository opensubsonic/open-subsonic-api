---
title: "getArtistInfo2"
linkTitle: "z getArtistInfo2"
description: >
    Returns artist info.
---

## TODO

`http://your-server/rest/getArtistInfo2` Since [1.11.0](../subsonic-versions)

Similar to `getArtistInfo`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist ID. |
| `count` | No  | 20  | Max number of similar artists to return. |
| `includeNotPresent` | No  | false | Whether to return artists that are not present in the media library. |

Returns a `<subsonic-response>` element with a nested `<artistInfo2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artistInfo2_example_1.xml).

