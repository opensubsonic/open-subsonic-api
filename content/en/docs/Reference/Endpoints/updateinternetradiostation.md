---
title: "updateInternetRadioStation"
linkTitle: "z updateInternetRadioStation"
description: >
    Updates an existing internet radio station. 
---

## TODO

`http://your-server/rest/updateInternetRadioStation` Since [1.16.0](../subsonic-versions)

Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID for the station. |
| `streamUrl` | Yes |     | The stream URL for the station. |
| `name` | Yes |     | The user-defined name for the station. |
| `homepageUrl` | No  |     | The home page URL for the station. |

Returns an empty `<subsonic-response>` element on success.
