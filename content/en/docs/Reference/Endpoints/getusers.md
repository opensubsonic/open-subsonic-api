---
title: "getUsers"
linkTitle: "getUsers"
description: >
    Get details about all users, including which authorization roles and folder access they have
---

`http://your-server/rest/getUsers` Since [1.8.0](../../subsonic-versions)

Get details about all users, including which authorization roles and folder access they have. Only users with admin privileges are allowed to call this method.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} <http://your-server/rest/getUsers.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json> {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`users`](../../responses/users) element on success.

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
| `users` | [`users`](../../responses/users) | **Yes** |     | The users |
