---
title: "deleteCollection"
linkTitle: "deleteCollection [OS]"
opensubsonic:
- Extension
categories:
- Collections
description: >
  Deletes a collection.
---
`http://your-server/rest/deleteCollection`

Deletes a collection.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |  | ID of the collection to delete, as obtained by `getCollections`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/deleteCollection.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
