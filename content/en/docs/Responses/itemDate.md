---
title: "ItemDate"
linkTitle: "ItemDate [OS]"
description: >
  A date for a media item that may be just a year, or year-month, or full date.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "year": 2020,
  "month": 1,
  "day": 1
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
  <!-- XML name is the name of the property on the parent object-->
  <originalReleaseDate year="2020" month="1" day="1"/>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `year`  | `integer` | No      |  **Yes**   | The year |
| `month` | `integer` | No      |  **Yes**   | The month (1-12) |
| `day`   | `integer` | No      |  **Yes**   | The day (1-31) |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
