---
title: "getIndexes"
linkTitle: "z getIndexes"
description: >
    Returns an indexed structure of all artists.
---

## TODO

`http://your-server/rest/getIndexes` Since [1.0.0](../subsonic-versions)

Returns an indexed structure of all artists.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | If specified, only return artists in the music folder with the given ID. See `getMusicFolders`. |
| `ifModifiedSince` | No  |     | If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970). |

Returns a `<subsonic-response>` element with a nested `<indexes>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/indexes_example_1.xml).
