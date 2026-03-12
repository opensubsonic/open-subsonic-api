---
title: "sonicSimilarTracksResult"
linkTitle: "sonicSimilarTracksResult [OS]"
OpenSubsonic:
- Addition
description: >
  The result of a sonic similar tracks search.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "sonicMatch": [
    {
      "id": "342",
      "distance": 0.05
    },
    {
      "id": "587",
      "distance": 0.12
    },
    {
      "id": "921",
      "distance": 0.28
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
| `sonicMatch` | Array of [`sonicMatch`](../sonicmatch) | No |  | A list of similar songs ordered by distance. |
