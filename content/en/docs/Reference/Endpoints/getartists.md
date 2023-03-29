---
title: "getArtists"
linkTitle: "z getArtists"
description: >
    Returns all artists.
---

## TODO

`http://your-server/rest/getArtists` Since [1.8.0](../subsonic-versions)

Similar to `getIndexes`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | If specified, only return artists in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<artists>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artists_example_1.xml).
