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
  "sonicMatch": [
    {
      "id": "100",
      "distance": 0.0
    },
    {
      "id": "342",
      "distance": 0.12
    },
    {
      "id": "587",
      "distance": 0.35
    },
    {
      "id": "200",
      "distance": 0.88
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `sonicMatch` | Array of [`sonicMatch`](../sonicmatch) | **Yes** |  | An ordered list of songs forming the path, each with its distance from the start song. |
