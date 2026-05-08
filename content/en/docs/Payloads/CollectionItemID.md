---
title: "collectionItemID"
linkTitle: "collectionItemID [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  An identifier for a collection item to be added.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="Song" lang="json">}}
{
  "type": "song",
  "id": "20"
}
{{< /tab >}}
{{< tab header="Album" lang="json">}}
{
  "type": "album",
  "id": "30"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `type` | `string` | **Yes** |     | One of: song, album, artist, playlist |
| `id` | `string` | **Yes** |     | An identifier of the item |
