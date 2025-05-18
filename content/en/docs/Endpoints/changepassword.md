---
title: "changePassword"
linkTitle: "changePassword"
categories:
- User management
description: >
    Changes the password of an existing user on the server.
---

`http://your-server/rest/changePassword` Since [1.1.0](../../subsonic-versions)

Changes the password of an existing user on the server, using the following parameters. You can only change your own password unless you have admin privileges.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | **Yes** |   |  | The name of the user which should change its password. |
| `password` | **Yes** |  |   | The new password of the new user, either in clear text of hex-encoded (see above). |

### Example

{{< alert color="primary" >}} `http://your-server/rest/changePassword.view?username=demo&password=password&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}
