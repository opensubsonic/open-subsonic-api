---
title: "musicFolders"
linkTitle: "musicFolders"
description: >
  MusicFolders.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "musicFolder": [
    {
      "id": 1,
      "name": "music"
    },
    {
      "id": 4,
      "name": "upload"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "musicFolder": [
    {
      "id": 1,
      "name": "music"
    },
    {
      "id": 4,
      "name": "upload"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `musicFolder` | Array of [`musicFolder`](../musicfolder) | No |   | The folders|
