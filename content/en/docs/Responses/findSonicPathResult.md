---
title: "findSonicPathResult"
linkTitle: "findSonicPathResult [OS]"
OpenSubsonic:
- Addition
description: >
  The result of a sonic path search between two songs.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": [
    "100",
    "342",
    "587",
    "921",
    "200"
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | Array of `string` | **Yes** |  | An ordered list of song IDs forming the path from the start song to the end song. |
