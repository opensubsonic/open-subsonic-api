---
title: "chatMessages"
linkTitle: "chatMessages"
description: >
  Chat messages list.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
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
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `chatMessage` | Array of [`chatMessage`](../chatmessage) | No |     | List of chatMessage |
