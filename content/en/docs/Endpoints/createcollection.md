---
title: "createCollection"
linkTitle: "createCollection [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  Creates a collection.
---

`http://your-server/rest/createCollection`

Creates a collection.
This endpoint must be accessed using an HTTP POST request.

### Request Body

The request payload should be provided in the body as a JSON object, as specified by the [CreateCollectionRequest](../payloads/createcollectionrequest) schema.

{{< tabpane persist=false >}}
{{< tab header="CreateCollectionRequest" lang="json">}}
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
      "id": "vaporwave"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

### Example request

{{< alert color="primary" >}} `POST http://your-server/rest/createCollection.view?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a top-level [`collection`](../../responses/collection) object on success.
In case of an error, a standard HTTP error code is returned with a descriptive message.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "collection": {
      "id": "800000075",
      "name": "test collection",
      "comment" "this is a collection",
      "owner": "user",
      "public": false,
      "itemCount": 3,
      "created": "2023-03-16T03:18:41+00:00",
      "changed": "2023-03-16T03:18:41+00:00"
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `collection` | [`Collection`](../../responses/collection) | **Yes** |   | The collection |
