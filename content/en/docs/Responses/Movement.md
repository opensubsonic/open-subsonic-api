---
title: "Movement"
linkTitle: "Movement [OS]"
opensubsonic:
- Addition
description: >
  A movement associated with a song.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "name": "Andante con moto",
  "number": 2,
  "count": 4
}
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | `string` | **Yes** | **Yes**    | The movement name. |
| `number` | `int` | No | **Yes**    | The movement number. |
| `count` | `int` | No | **Yes**    | The total number of movements. |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
