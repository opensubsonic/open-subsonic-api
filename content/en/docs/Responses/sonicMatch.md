---
title: "sonicMatch"
linkTitle: "sonicMatch [OS]"
OpenSubsonic:
- Addition
description: >
  A matched song with its normalized distance.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "342",
  "distance": 0.12
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |  | The ID of the matched song. |
| `distance` | `number` | **Yes** |  | The normalized distance from the reference song (0.0 = identical, 1.0 = most dissimilar). |
