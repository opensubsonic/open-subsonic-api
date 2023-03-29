---
title: "getNewestPodcasts"
linkTitle: "z getNewestPodcasts"
description: >
    Returns the most recently published Podcast episodes.
---

## TODO

`http://your-server/rest/getNewestPodcasts` Since [1.13.0](../subsonic-versions)

Returns the most recently published Podcast episodes.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `count` | No  | 20  | The maximum number of episodes to return. |

Returns a `<subsonic-response>` element with a nested `<newestPodcasts>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/newest_podcasts_example_1.xml).
