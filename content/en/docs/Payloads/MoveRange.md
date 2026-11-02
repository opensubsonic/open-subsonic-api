---
title: "MoveRange"
linkTitle: "MoveRange [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  Move a range of items from one position to another.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "fromStart": 0,
  "fromEnd": 5,
  "to": 20
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `fromStart` | integer | **Yes** | **Yes** | Start of the original range (inclusive). |
| `fromEnd` | integer | **Yes** | **Yes** | End of the original range (exclusive). |
| `to` | integer | **Yes** | **Yes** | New index of the first item in the range. |
