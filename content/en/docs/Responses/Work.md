---
title: "Work"
linkTitle: "Work [OS]"
opensubsonic:
- Addition
description: >
  A work for a song.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "name": "Symphony No. 5 in C minor, Op. 67",
  "musicBrainzId": "d03bff61-26fc-301b-98ac-4d8e85771cbc"
}
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | `string` | **Yes** | **Yes**    | The work name. |
| `musicBrainzId` | `string` | No | **Yes**    | The MusicBrainz Work ID. |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
