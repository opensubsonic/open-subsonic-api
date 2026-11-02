---
title: "AddItemsToCollection"
linkTitle: "AddItemsToCollection [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  Payload for adding items to a collection.
---

To be used as part of the [UpdateCollectionRequest](../payloads/updatecollectionrequest)
when adding new items.
Items in a collection must be unique, repeated items in a payload result in an error.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "items": [
    {
      "type": "album",
      "id": "1234"
    }
  ],
  "to": 6
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `items` | [CollectionItemID[]](../payloads/collectionitemid) | **Yes** | **Yes** | A list of items. Each item must occur at most once. |
| `to` | integer | No | **Yes** | If set and non-negative, the first item in the array will be added at this index; if unset or set to a negative value, items will be appended to the tail of the collection. |
