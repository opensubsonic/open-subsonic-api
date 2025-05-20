---
title: "line"
linkTitle: "line [OS]"
opensubsonic:
  - Addition
description: >
  One line of a song lyric
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "start": 0,
  "value": "It's bugging me"
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<line start="0">It's bugging me</line>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field   | Type     | Req.    | OpenS.  | Details                                                                                                                                                 |
| ------- | -------- | ------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `value` | `string` | **Yes** | **Yes** | The actual text of this line                                                                                                                            |
| `start` | `number` | No      | **Yes** | The start time of the lyrics, relative to the start time of the track, in milliseconds. If this is not part of synced lyrics, start **must** be omitted |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
