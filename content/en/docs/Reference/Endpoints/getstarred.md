---
title: "getStarred"  
linkTitle: "z getStarred"
description: >
    Returns starred songs, albums and artists.
---

## TODO

`http://your-server/rest/getStarred` Since [1.8.0](../subsonic-versions)

Returns starred songs, albums and artists.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<starred>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/starred_example_1.xml).

