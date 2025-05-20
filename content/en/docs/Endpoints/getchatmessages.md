---
title: "getChatMessages"
linkTitle: "getChatMessages"
categories:
- Chat
description: >
  Returns the current visible (non-expired) chat messages.
---

`http://your-server/rest/getChatMessages` Since [1.2.0](../../subsonic-versions)

Returns the current visible (non-expired) chat messages.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `since` | No  |  |  | Only return messages newer than this time (in millis since Jan 1 1970). |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getChatMessages.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`chatMessages`](../../responses/chatmessages) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "chatMessages": {
      "chatMessage": [
        {
          "username": "admin",
          "time": 1678935707000,
          "message": "Api Script Testing"
        },
        {
          "username": "user",
          "time": 1678935699000,
          "message": "Api Script Testing"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "chatMessages": {
      "chatMessage": [
        {
          "username": "admin",
          "time": 1678935707000,
          "message": "Api Script Testing"
        },
        {
          "username": "user",
          "time": 1678935699000,
          "message": "Api Script Testing"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `chatMessages` | [`chatMessages`](../../responses/chatmessages) | **Yes** |   | The message list |
