---
title: "ReleaseGroup"
linkTitle: "ReleaseGroup [OS]"
description: >
  A release group for an album.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "version": "Deluxe Edition"
}
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `version` | `string` | **Yes** |  **Yes**   | The album version name ("Remastered", "Anniversary Box Set", or ""). |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
