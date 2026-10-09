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

When the 'id' field is not present for an item type (e.g. [Genre](../responses/genre)), use its name or some other natural identifier.

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
{{< tab header="Genre" lang="json">}}
{
  "type": "genre",
  "id": "vaporwave"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `type` | `string` | **Yes** |     | One of: song, album, artist, playlist, genre, internetRadioStation, podcastEpisode, podcast. |
| `id` | `string` | **Yes** |     | ID (or name, if 'id' is not available) of an item. |
