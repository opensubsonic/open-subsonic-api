---
title: "playlistFolders"
linkTitle: "playlistFolders [OS]"
OpenSubsonic:
  - Extension
description: >
  Folders in a user's playlist organization.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "playlistFolder": [
    {
      "id": "folder-dj",
      "name": "DJ Sets",
      "sortOrder": 1
    },
    {
      "id": "folder-2026",
      "name": "2026",
      "parentId": "folder-dj",
      "sortOrder": 1
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `playlistFolder` | Array of [`playlistFolder`](../playlistfolder) | No | **Yes** | The selected user's playlist folders. |
