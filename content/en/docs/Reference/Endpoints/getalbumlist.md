---
title: "getArtgetAlbumListist"
linkTitle: "z getAlbumList"
description: >
    Returns a list of random, newest, highest rated etc. albums.
---

## TODO

`http://your-server/rest/getAlbumList` Since [1.2.0](../subsonic-versions)

Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `type` | Yes |     | The list type. Must be one of the following: `random`, `newest`, `highest`, `frequent`, `recent`. Since [1.8.0](../subsonic-versions) you can also use `alphabeticalByName` or `alphabeticalByArtist` to page through all albums alphabetically, and `starred` to retrieve starred albums. Since [1.10.1](../subsonic-versions) you can use `byYear` and `byGenre` to list albums in a given year range or genre. |
| `size` | No  | 10  | The number of albums to return. Max 500. |
| `offset` | No  | 0   | The list offset. Useful if you for example want to page through the list of newest albums. |
| `fromYear` | Yes (if `type` is `byYear`) |     | The first year in the range. If `fromYear > toYear` a reverse chronological list is returned. |
| `toYear` | Yes (if `type` is `byYear`) |     | The last year in the range. |
| `genre` | Yes (if `type` is `byGenre`) |     | The name of the genre, e.g., "Rock". |
| `musicFolderId` | No  |     | (Since [1.11.0](../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<albumList>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumList_example_1.xml).

