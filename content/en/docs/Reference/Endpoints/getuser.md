---
title: "getUser"
linkTitle: "z getUser"
description: >
    Get details about a given user, including which authorization roles and folder access it has.
---

## TODO

`http://your-server/rest/getUser` Since [1.3.0](../subsonic-versions)

Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges. |

Returns a `<subsonic-response>` element with a nested `<user>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/user_example_1.xml).
