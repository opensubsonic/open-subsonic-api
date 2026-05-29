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

Depending on the item type, either `id` or `name` must be provided.
For most types, `id` is the natural choice, but some types (e.g. [Genre](../responses/genre))
don't have it, so `name` should be used.

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
  "name": "vaporwave"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `type` | `string` | **Yes** |     | One of: song, album, artist, playlist, genre, internetRadioStation, podcastEpisode, podcast. |
| `id` | `string` | No |     | ID of the item, where applicable |
| `name` | `string` | No |     | Name of the item, where applicable |
