---
title: "CreateCollectionRequest"
linkTitle: "CreateCollectionRequest [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  Request payload for creating a collection.
---

Should be used in the [CreateCollection](../endpoints/createcollection) endpoint.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "name": "test collection",
  "comment": "this is a collection",
  "items": [
    {
      "type": "song",
      "id": "300000060"
    },
    {
      "type": "album",
      "id": "200000021"
    },
    {
      "type": "genre",
      "name": "vaporwave"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | string | **Yes** | **Yes** | The human-readable name of the collection. |
| `comment` | string | No | **Yes** | The collection comment. |
| `public` | boolean | No | **Yes**  | `true` if the collection should be visible to all users, `false` otherwise. Default `false`. |
| `items` | [CollectionItemID[]](../payloads/collectionitemid) | No | **Yes** | A list of items. |
