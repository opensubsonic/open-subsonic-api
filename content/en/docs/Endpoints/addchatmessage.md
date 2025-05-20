---
title: "addChatMessage"
linkTitle: "addChatMessage"
categories:
- Chat
description: >
    Adds a message to the chat log.
---

`http://your-server/rest/addChatMessage` Since [1.2.0](../../subsonic-versions)

Adds a message to the chat log.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `message` | **Yes** |   |  | The chat message. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/addChatMessage.view?message=hello&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
