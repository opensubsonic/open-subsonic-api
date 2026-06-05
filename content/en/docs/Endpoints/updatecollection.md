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
This endpoint must be accessed using an HTTP POST request.

### Request Body

The request payload should be provided in the body as a JSON object, as specified by the [UpdateCollectionRequest](../payloads/updatecollectionrequest) schema.
Only the fields specified in the request payload will have an effect on a collection.

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

### Example request

{{< alert color="primary" >}} `POST http://your-server/rest/updateCollection.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
