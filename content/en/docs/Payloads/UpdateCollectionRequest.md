---
title: "UpdateCollectionRequest"
linkTitle: "UpdateCollectionRequest [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  Request payload for updating a collection.
---

Should be used in the [UpdateCollection](../endpoints/updatecollection) endpoint.
Only the fields supplied in the request payload will have an effect on a collection.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="Name and comment" lang="json">}}
{
  "collectionId": "23785995",
  "name": "new name",
  "comment": "this is a new comment"
}
{{< /tab >}}
{{< tab header="Add" lang="json">}}
{
  "collectionId": "23785995",
  "add": {
    "items": [
      {
        "type": "album",
        "id": "1234"
      }
    ],
    "to": 6
  }
}
{{< /tab >}}
{{< tab header="Move" lang="json">}}
{
  "collectionId": "23785995",
  "move": {
    "fromStart": 0,
    "fromEnd": 5,
    "to": 20
  }
}
{{< /tab >}}
{{< tab header="Remove" lang="json">}}
{
  "collectionId": "23785995",
  "remove": [0, 1, 2, 6]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `collectionId` | string | **Yes** | **Yes** | The collection ID. |
| `name` | string | No | **Yes** | The human-readable name of the collection. Cannot be an empty string. |
| `comment` | string | No | **Yes** | The collection comment. |
| `public` | boolean | No | **Yes** | `true` if the collection should be visible to all users, `false` otherwise. |
| `add` | [AddItemsToCollection](../payloads/additemstocollection) | No | **Yes** | Add items to the collection. |
| `move` | [MoveRange](../payloads/moverange) | No | **Yes** | Move items from the original position to another in the collection. |
| `remove` | Array of integer | No | **Yes** | Remove the items at the specified positions from the collection. |

Only one of `add`, `move`, and `remove` can be non-empty in a single request.
