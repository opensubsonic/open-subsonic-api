---
title: "keyUrl"
linkTitle: "keyUrl [OS]"
opensubsonic:
  - Addition
description: >
  A url which points to documentation
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
    "url": "https://example.org/user/newApiKey"
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<keyUrl url="https://example.org/user/newApiKey"></keyUrl>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field | Type     | Req.    | OpenS.  | Details |
| ----- | -------- | ------- | ------- | ------- |
| `url` | `string` | **Yes** | **Yes** | A URL   |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| ------ | --------- | ------- |

{{< /alert >}}
