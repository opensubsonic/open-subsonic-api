---
title: "getUser"
linkTitle: "getUser"
description: >
    Get details about a given user, including which authorization roles and folder access it has.
---

`http://your-server/rest/getUser` Since [1.3.0](../../subsonic-versions)

Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | **Yes** | |    | The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges. |

### Example

{{< alert color="primary" >}} <http://your-server/rest/getUser.view?username=tata&u=demo&p=demo&v=1.13.0&c=AwesomeServerName&f=json> {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`user`](../../responses/user) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `user` | [`user`](../../responses/user) | **Yes** |     | The user |
