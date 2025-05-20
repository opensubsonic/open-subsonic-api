---
title: "scanStatus"
linkTitle: "scanStatus"
description: >
  Scan status information.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "scanning": false,
  "count": 0
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "scanning": false,
  "count": 0
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `scanning` | `boolean` | **Yes** |     | The status of the scan |
| `count` | `int` | No |     | Scanned item count |
