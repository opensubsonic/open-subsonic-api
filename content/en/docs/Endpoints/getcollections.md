---
title: "getCollections"
linkTitle: "getCollections [OS]"
OpenSubsonic:
- Extension
categories:
- Collections
description: >
  Returns collections a user has access to.
---

`http://your-server/rest/getCollections`

Returns collections a user has access to, with optional filters and pagination.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | No |  |  | If specified, return collections for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used. |
| `name` | No |  |  | If specified, return collections that have the provided string in their name. |
| `sort` | No |  | name | If specified, sort the list by the provided field or randomly. Sorting is applied before the `count` and `offset` parameters are taken into account. The default is to sort by name. Allowed values: name, created, random. |
| `order` | No |  | asc | The order of sorting. Allowed values: asc, desc. |
| `count` | No |  |  | The number of collections to return. If unset or set to a negative value, return all collections. |
| `offset` | No |  |  | The number of collections to skip. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getCollections.view?count=2&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a top-level `collections` array of [collection](../../responses/collection) elements on success.

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
    "collections": [
      {
        "id": "800000075",
        "name": "testcollection",
        "owner": "user",
        "public": true,
        "created": "2026-03-16T03:18:41+00:00",
        "changed": "2026-03-16T03:18:41+00:00",
        "itemCount": 3,
        "readonly": true
      },
      {
        "id": "800000076",
        "name": "testcollection2",
        "comment" "this is another collection",
        "owner": "user",
        "public": false,
        "itemCount": 17,
        "created": "2026-03-16T03:18:41+00:00",
        "changed": "2026-03-16T03:18:41+00:00",
        "readonly": true
      }
    ],
    "totalCount": 10
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `collections` | Array of [`collection`](../../responses/collection) | **Yes** |   | The collections. |
| `totalCount` | integer | **Yes** |   | The total number of collections a user has access to. |
