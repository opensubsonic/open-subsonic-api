---
title: "createInternetRadioStation"
linkTitle: "z createInternetRadioStation"
description: >
    Adds a new internet radio station.
---

## TODO

`http://your-server/rest/createInternetRadioStation` Since [1.16.0](../subsonic-versions)

Adds a new internet radio station. Only users with admin privileges are allowed to call this method.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `streamUrl` | Yes |     | The stream URL for the station. |
| `name` | Yes |     | The user-defined name for the station. |
| `homepageUrl` | No  |     | The home page URL for the station. |

Returns an empty `<subsonic-response>` element on success.
