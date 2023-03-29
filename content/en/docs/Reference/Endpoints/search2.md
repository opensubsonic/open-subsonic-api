---
title: "search2"
linkTitle: "z search2"
description: >
    Returns a listing of files matching the given search criteria. Supports paging through the result.
---

## TODO

`http://your-server/rest/search2` Since [1.4.0](../subsonic-versions)

Returns albums, artists and songs matching the given search criteria. Supports paging through the result.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `query` | Yes |     | Search query. |
| `artistCount` | No  | 20  | Maximum number of artists to return. |
| `artistOffset` | No  | 0   | Search result offset for artists. Used for paging. |
| `albumCount` | No  | 20  | Maximum number of albums to return. |
| `albumOffset` | No  | 0   | Search result offset for albums. Used for paging. |
| `songCount` | No  | 20  | Maximum number of songs to return. |
| `songOffset` | No  | 0   | Search result offset for songs. Used for paging. |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<searchResult2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/searchResult2_example_1.xml).
