---
title: "chatMessage"
linkTitle: "chatMessage"
description: >
  A chatMessage.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "username": "user",
  "time": 1678935699000,
  "message": "Api Script Testing"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "username": "user",
  "time": 1678935699000,
  "message": "Api Script Testing"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `username` | `string` | **Yes** |     | Username |
| `time` | `long` | **Yes** |     | Time in millis since Jan 1 1970  |
| `message` | `string` | **Yes**|     | The message |
