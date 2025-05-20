---
title: "genre"
linkTitle: "genre"
description: >
  A genre.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "songCount": 6,
  "albumCount": 1,
  "value": "Noise"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "songCount": 6,
  "albumCount": 1,
  "value": "Noise"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `value` | `string` | **Yes** |     | Genre name |
| `songCount` | `int` | **Yes** |     | Genre song count |
| `albumCount` | `int` | **Yes**|     | Genre album count |
