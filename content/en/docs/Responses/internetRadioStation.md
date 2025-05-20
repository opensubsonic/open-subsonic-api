---
title: "internetRadioStation"
linkTitle: "internetRadioStation"
description: >
  An internetRadioStation.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "2",
  "name": "HBR1.com - I.D.M. Tranceponder",
  "streamUrl": "http://ubuntu.hbr1.com:19800/trance.ogg",
  "homepageUrl": "http://www.hbr1.com/"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id": "2",
  "name": "HBR1.com - I.D.M. Tranceponder",
  "streamUrl": "http://ubuntu.hbr1.com:19800/trance.ogg",
  "homepageUrl": "http://www.hbr1.com/"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | The Id |
| `name` | `string` | **Yes** |     | The name |
| `streamUrl` | `string` | **Yes**|     | The radio url |
| `homePageUrl` | `string` | No |     | Genre name |
