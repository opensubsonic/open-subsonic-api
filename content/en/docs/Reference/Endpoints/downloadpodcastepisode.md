---
title: "downloadPodcastEpisode"
linkTitle: "z downloadPodcastEpisode"
description: >
    Request the server to start downloading a given Podcast episode. 
---

## TODO

`http://your-server/rest/downloadPodcastEpisode` Since [1.9.0](../subsonic-versions)

Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the Podcast episode to download. |

Returns an empty `<subsonic-response>` element on success.
