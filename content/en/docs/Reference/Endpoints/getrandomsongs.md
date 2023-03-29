---
title: "getRandomSongs"
linkTitle: "z getRandomSongs"
description: >
    Returns random songs matching the given criteria.
---

## TODO

`http://your-server/rest/getRandomSongs` Since [1.2.0](../subsonic-versions)

Returns random songs matching the given criteria.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `size` | No  | 10  | The maximum number of songs to return. Max 500. |
| `genre` | No  |     | Only returns songs belonging to this genre. |
| `fromYear` | No  |     | Only return songs published after or in this year. |
| `toYear` | No  |     | Only return songs published before or in this year. |
| `musicFolderId` | No  |     | Only return songs in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<randomSongs>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/randomSongs_example_1.xml).
