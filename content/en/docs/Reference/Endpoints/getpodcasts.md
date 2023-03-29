---
title: "getPodcasts"
linkTitle: "z getPodcasts"
description: >
    Returns all Podcast channels the server subscribes to, and (optionally) their episodes.
---

## TODO


`http://your-server/rest/getPodcasts` Since [1.6.0](../subsonic-versions)

Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the `id` parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `includeEpisodes` | No  | true | (Since [1.9.0](../subsonic-versions)) Whether to include Podcast episodes in the returned result. |
| `id` | No  |     | (Since [1.9.0](../subsonic-versions)) If specified, only return the Podcast channel with this ID. |

Returns a `<subsonic-response>` element with a nested `<podcasts>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/podcasts_example_1.xml).

