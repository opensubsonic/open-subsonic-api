---
title: "deleteUser"
linkTitle: "deleteUser"
categories:
- User management
description: >
    Deletes an existing user on the server.
---

`http://your-server/rest/deleteUser` Since [1.3.0](../../subsonic-versions)

Deletes an existing user on the server, using the following parameters:

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | **Yes** |  |    | The name of the user to delete. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/deleteUser.view?username=test&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
