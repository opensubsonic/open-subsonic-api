---
title: "getAvatar"
linkTitle: "getAvatar"
description: >
    Returns the avatar (personal image) for a user.
---

`http://your-server/rest/getAvatar` Since [1.8.0](../../subsonic-versions)

Returns the avatar (personal image) for a user.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | **Yes** |     | The user in question.. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getAvatar.view?username=test&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

Returns the avatar image in binary form on success, or an XML document on error (in which case the HTTP content type will start with “text/xml”).
