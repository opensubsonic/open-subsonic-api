---
title: "getMusicDirectory"
linkTitle: "z getMusicDirectory"
description: >
    Returns a listing of all files in a music directory.
---

## TODO

`http://your-server/rest/getMusicDirectory`
Since [1.0.0](../subsonic-versions)

Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory. |

Returns a `<subsonic-response>` element with a nested `<directory>` element on success. [Example 1](http://subsonic.org/pages/inc/api/examples/directory_example_1.xml). [Example 2](http://subsonic.org/pages/inc/api/examples/directory_example_2.xml).
