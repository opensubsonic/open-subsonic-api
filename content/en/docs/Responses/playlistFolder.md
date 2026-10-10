---
title: "playlistFolder"
linkTitle: "playlistFolder [OS]"
OpenSubsonic:
  - Extension
description: >
  A folder in a user's playlist organization.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "folder-dj",
  "name": "DJ Sets",
  "parentId": "folder-events",
  "sortOrder": 3
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** | **Yes** | ID of the playlist folder. |
| `name` | `string` | **Yes** | **Yes** | Name of the playlist folder. |
| `parentId` | `string` | No | **Yes** | ID of the parent playlist folder. Omitted for a root-level folder. |
| `sortOrder` | `int` | No | **Yes** | Position among siblings, as a client-assigned integer. See the [extension description](../../extensions/playlistfolders) for ordering semantics. |
