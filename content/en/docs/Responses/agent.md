---
title: "agent"
linkTitle: "agent [OS]"
opensubsonic:
  - Addition
description: >
  Reusable metadata for a vocal agent within a structuredLyrics entry.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "id": "lead",
  "role": "main",
  "name": "Chris Martin"
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<agent id="lead" role="main" name="Chris Martin" />
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

##### Example agent list within one `structuredLyrics` entry

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
[
  { "id": "lead", "role": "main", "name": "Chris Martin" },
  { "id": "guest", "role": "voice", "name": "Jin" },
  { "id": "choir", "role": "group", "name": "All" },
  { "id": "backing", "role": "bg" }
]
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<agent id="lead" role="main" name="Chris Martin" />
<agent id="guest" role="voice" name="Jin" />
<agent id="choir" role="group" name="All" />
<agent id="backing" role="bg" />
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field  | Type     | Req.    | OpenS.  | Details                                                                                                                                                                                                                                                                |
| ------ | -------- | ------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`   | `string` | **Yes** | **Yes** | Opaque identifier for this agent. The value is only meaningful within the parent [`structuredLyrics`](../structuredlyrics) entry and **must** be unique within that entry                                                                                               |
| `role` | `string` | **Yes** | **Yes** | Semantic vocal-layer classification for cueLines that reference this agent. One of: `main` (lead/default vocal layer), `voice` (additional explicit individual voice part), `bg` (background vocals), `group` (group/chorus vocals). When a [`structuredLyrics`](../structuredlyrics) entry uses `agents` for cue-attributed lyrics, it **must** define exactly one `main` agent |
| `name` | `string` | No      | **Yes** | Optional human-readable label for this agent, such as a singer or character name from the source metadata                                                                                                                                                             |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type added in extension [`songLyrics`](../../extensions/songlyrics) version 2.
{{< /alert >}}
