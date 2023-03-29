---
title: "getSongsByGenre"
linkTitle: "z getSongsByGenre"
description: >
    Returns songs in a given genre.
---

## TODO

`http://your-server/rest/getSongsByGenre` Since [1.9.0](../subsonic-versions)

Returns songs in a given genre.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `genre` | Yes |     | The genre, as returned by `getGenres`. |
| `count` | No  | 10  | The maximum number of songs to return. Max 500. |
| `offset` | No  | 0   | The offset. Useful if you want to page through the songs in a genre. |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<songsByGenre>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/songsByGenre_example_1.xml).
