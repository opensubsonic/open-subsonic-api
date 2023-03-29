---
title: "getStarred2"
linkTitle: "z getStarred2"
description: >
    Returns starred songs, albums and artists.
---

## TODO

`http://your-server/rest/getStarred2` Since [1.8.0](../subsonic-versions)

Similar to `getStarred`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<starred2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/starred2_example_1.xml).

