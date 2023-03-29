---
title: "updateShare"
linkTitle: "z updateShare"
description: >
    Updates the description and/or expiration date for an existing share.
---

## TODO

`http://your-server/rest/updateShare` Since [1.6.0](../subsonic-versions)

Updates the description and/or expiration date for an existing share.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of the share to update. |
| `description` | No  |     | A user-defined description that will be displayed to people visiting the shared media. |
| `expires` | No  |     | The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration. |

Returns an empty `<subsonic-response>` element on success.
