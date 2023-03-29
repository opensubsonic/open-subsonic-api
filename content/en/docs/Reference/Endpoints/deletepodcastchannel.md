---
title: "deletePodcastChannel"
linkTitle: "z deletePodcastChannel"
description: >
    Deletes a Podcast channel.
---

## TODO

`http://your-server/rest/deletePodcastChannel` Since [1.9.0](../subsonic-versions)

Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the Podcast channel to delete. |

Returns an empty `<subsonic-response>` element on success.
