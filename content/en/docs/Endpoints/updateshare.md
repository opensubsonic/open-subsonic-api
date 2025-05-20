---
title: "updateShare"
linkTitle: "updateShare"
categories:
- Sharing
description: >
    Updates the description and/or expiration date for an existing share.
---

`http://your-server/rest/updateShare` Since [1.6.0](../../subsonic-versions)

Updates the description and/or expiration date for an existing share.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |    |   | ID of the share to update. |
| `description` | No  | |      | A user-defined description that will be displayed to people visiting the shared media. |
| `expires` | No  |   |    | The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/updateShare.view?id=123&description=test&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
