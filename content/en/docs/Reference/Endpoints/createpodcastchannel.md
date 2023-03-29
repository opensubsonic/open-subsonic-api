---
title: "createPodcastChannel"
linkTitle: "z createPodcastChannel"
description: >
    Adds a new Podcast channel.
---

## TODO


`http://your-server/rest/createPodcastChannel` Since [1.9.0](../subsonic-versions)

Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `url` | Yes |     | The URL of the Podcast to add. |

Returns an empty `<subsonic-response>` element on success.
