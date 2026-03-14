---
title: "DiscTitle"
linkTitle: "DiscTitle [OS]"
opensubsonic:
- Addition
description: >
  A disc title for an album, with an optional cover art.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "disc": 0,
  "title": "The disc title"
  "coverArt": "65135"
}
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `disc` | `int` | **Yes** | **Yes**    | The disc number. |
| `title` | `string` | **Yes**  | **Yes**     | The name of the disc. |
| `coverArt` | `string` | No  | **Yes**     | The cover art ID of the disc. |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
