---
title: "updateCollection"
linkTitle: "updateCollection [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  Updates a collection.
---
`http://your-server/rest/updateCollection`

Updates a collection. Only the owner of a collection is allowed to update it.
This endpoint must be accessed using an HTTP PATCH request, only the fields specified in the request payload will have an effect on a collection.

### Request Body

The request payload should be provided in the body as a JSON object.

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `collectionId` | **Yes** |  |  | The collection ID. |
| `name` | No |  |  | The human-readable name of the collection. |
| `comment` | No |  |  | The collection comment. |
| `public` | No |  |  | `true` if the collection should be visible to all users, `false` otherwise. |
| `add` | No |  |  | Add the specified items to the collection. The payload is an array of [collectionItemID](../payloads/collectionitemid) objects. Items are appended to the tail of the collection. |
| `move` | No |  |  | Move items from the original position to a new one in the collection. The original range is specified by the `fromStart` (inclusive) and `fromEnd` (exclusive) positions. The first item in the range moves to the position specified by `to` |
| `remove` | No |  |  | Remove the items at the specified positions from the collection. The payload is an array of integer indices. |

Only one of `add`, `move`, and `remove` can be non-empty in a single request.

### Example request

{{< alert color="primary" >}} `PATCH http://your-server/rest/updateCollection.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

{{< tabpane persist=false >}}
{{< tab header="**Body**:" disabled=true />}}
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
  "add": [
    {
      "type": "album",
      "id": "1234"
    }
  ]
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

### Result

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
  }
}
{{< /tab >}}
{{< /tabpane >}}
