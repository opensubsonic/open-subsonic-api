---
title: "keyUrl"
linkTitle: "keyUrl [OS]"
opensubsonic:
  - Addition
description: >
  A media key with specific expiration
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
    "exp": 3600,
    "key": "MEDIA_KEY"
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<mediaKey exp="3600" key="TEMPORARY_API key"></mediaKey>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field | Type     | Req.    | OpenS.  | Details                                    |
| ----- | -------- | ------- | ------- | ------------------------------------------ |
| `exp` | `number` | **Yes** | **Yes** | Expiration, in seconds                     |
| `key` | `string` | **Yes** | **Yes** | The Media API key, used for authentication |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| ------ | --------- | ------- |

{{< /alert >}}
