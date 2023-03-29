---
title: "changePassword"
linkTitle: "z changePassword"
description: >
    Changes the password of an existing user on the server.
---

## TODO

`http://your-server/rest/changePassword` Since [1.1.0](../subsonic-versions)

Changes the password of an existing user on the server, using the following parameters. You can only change your own password unless you have admin privileges.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the user which should change its password. |
| `password` | Yes |     | The new password of the new user, either in clear text of hex-encoded (see above). |

Returns an empty `<subsonic-response>` element on success.

