---
title: "getUsers"
linkTitle: "z getUsers"
description: >
    Get details about all users, including which authorization roles and folder access they have
---

## TODO

`http://your-server/rest/getUsers` Since [1.8.0](../subsonic-versions)

Get details about all users, including which authorization roles and folder access they have. Only users with admin privileges are allowed to call this method.

Returns a `<subsonic-response>` element with a nested `<users>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/users_example_1.xml).
