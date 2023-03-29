---
title: "search"
linkTitle: "z search"
description: >
    Returns a listing of files matching the given search criteria. Supports paging through the result.
---

## TODO

`http://your-server/rest/search` Since [1.0.0](../subsonic-versions)
Deprecated since [1.4.0](../subsonic-versions), use `search2` instead.

Returns a listing of files matching the given search criteria. Supports paging through the result.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `artist` | No  |     | Artist to search for. |
| `album` | No  |     | Album to searh for. |
| `title` | No  |     | Song title to search for. |
| `any` | No  |     | Searches all fields. |
| `count` | No  | 20  | Maximum number of results to return. |
| `offset` | No  | 0   | Search result offset. Used for paging. |
| `newerThan` | No  |     | Only return matches that are newer than this. Given as milliseconds since 1970. |

Returns a `<subsonic-response>` element with a nested `<searchResult>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/searchResult_example_1.xml).
