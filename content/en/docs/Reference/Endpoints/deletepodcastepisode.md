---
title: "deletePodcastEpisode"
linkTitle: "z deletePodcastEpisode"
description: >
    Deletes a Podcast episode.
---

## TODO

`http://your-server/rest/deletePodcastEpisode` Since [1.9.0](../subsonic-versions)

Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the Podcast episode to delete. |

Returns an empty `<subsonic-response>` element on success.
