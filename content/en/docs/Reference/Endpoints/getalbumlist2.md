---
title: "getAlbumList2"
linkTitle: "z getAlbumList2"
description: >
    Returns a list of random, newest, highest rated etc. albums.
---

## TODO

`http://your-server/rest/getAlbumList2` Since [1.8.0](../subsonic-versions)

Similar to `getAlbumList`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `type` | Yes |     | The list type. Must be one of the following: `random`, `newest`, `frequent`, `recent`, `starred`, `alphabeticalByName` or `alphabeticalByArtist`. Since [1.10.1](../subsonic-versions) you can use `byYear` and `byGenre` to list albums in a given year range or genre. |
| `size` | No  | 10  | The number of albums to return. Max 500. |
| `offset` | No  | 0   | The list offset. Useful if you for example want to page through the list of newest albums. |
| `fromYear` | Yes (if `type` is `byYear`) |     | The first year in the range. If `fromYear > toYear` a reverse chronological list is returned. |
| `toYear` | Yes (if `type` is `byYear`) |     | The last year in the range. |
| `genre` | Yes (if `type` is `byGenre`) |     | The name of the genre, e.g., "Rock". |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<albumList2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumList2_example_1.xml).

