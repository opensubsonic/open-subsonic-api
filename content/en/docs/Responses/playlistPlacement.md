---
title: "playlistPlacement"
linkTitle: "playlistPlacement [OS]"
OpenSubsonic:
  - Extension
description: >
  A playlist's placement in a folder in a user's playlist organization.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "playlistId": "playlist-summer",
  "playlistFolderId": "folder-2026",
  "sortOrder": 3
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `playlistId` | `string` | **Yes** | **Yes** | ID of the placed playlist. |
| `playlistFolderId` | `string` | No | **Yes** | ID of the containing playlist folder. Empty or omitted for an explicit root placement. |
| `sortOrder` | `int` | No | **Yes** | Position among siblings, as a client-assigned integer. See the [extension description](../../extensions/playlistfolders) for ordering semantics. |

A placement is a (playlist, folder) pair in the selected user's playlist organization. A playlist may have any number of placements, at most one per folder; `sortOrder` lives on the placement, so the same playlist can be ordered independently in each folder it appears in. A playlist with no placements appears implicitly at the root, unordered.
