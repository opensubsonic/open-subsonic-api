---
title: "OpenSubsonicExtension"
linkTitle: "OpenSubsonicExtension [OS]"
description: >
  A supported OpenSubsonic API extension.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
    "name": "template",
    "versions": [
        1,
        2
    ]
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | `String` | Yes | **Yes**    | The name of the extension. |
| `versions` | Array of `int` | Yes | **Yes**       | The list of supported versions of the this extension. |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new response type.
{{< /alert >}}
