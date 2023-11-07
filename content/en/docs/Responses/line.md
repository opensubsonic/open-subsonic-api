---
title: "line"
linkTitle: "line [OS]"
opensubsonic:
  - Addition
description: >
  One line of a song lyric
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
// Synced JSON
{
  "start": 0,
  "value": "It's bugging me"
}
// Unsynced JSON
{
  "value": "It's bugging me"
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<!-- Synced XML -->
<line start="0">It's bugging me</line>
<!-- Unsynced XML -->
<line>It's bugging me</line>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field   | Type     | Req.    | OpenS.  | Details                                                                                                        |
| ------- | -------- | ------- | ------- | -------------------------------------------------------------------------------------------------------------- |
| `value` | `string` | **Yes** | **Yes** | The actual text of this line                                                                                   |
| `start` | `number` | No      | **Yes** | The start time of the lyrics, in milliseconds. If this is not part of synced lyrics, start **must** be omitted |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| ------ | --------- | ------- |

{{< /alert >}}
