---
title: "collection"
linkTitle: "collection [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  A collection, as returned by the [getCollections](../../endpoints/getcollections) endpoint.
---

Does not contain the items in the collection, look at [collectionWithItems](../../responses/collectionwithitems) instead.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="Collection" lang="json">}}
{
  "id": "800000075",
  "name": "testcollection",
  "owner": "user",
  "public": true,
  "created": "2026-03-16T03:18:41+00:00",
  "changed": "2026-03-16T03:18:41+00:00",
  "itemCount": 3,
  "readonly": true,
  "validUntil": "2026-03-23T03:18:41+00:00"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | Id of the collection |
| `name` | `string` | **Yes** |     | Name of the collection |
| `comment` | `string` | No|     | A commnet |
| `owner` | `string` | No |     | Owner of the collection |
| `public` | `boolean` | No|     | Is the collection public |
| `itemCount` | `int` | **Yes** |     | number of items |
| `created` | `string` | **Yes** |     | Creation date [ISO 8601] |
| `changed` | `string` | **Yes** |     | Last changed date [ISO 8601] |
| `coverArt` | `string` | No |     | A cover Art Id |
| `allowedUser` | Array of `string` | No |     | A list of allowed usernames |
| `readonly` | `boolean` | No |  | If true the collection cannot be edited by the current user |
| `validUntil` | `string` | No |  | Date the collection contents are considered valid until [ISO 8601] |

When `readonly` is true, clients should hide or disable UI actions that modify the collection. The value should reflect the current authenticated user's access level. When omitted, clients should assume the collection is editable (`false`).

The `validUntil` field indicates how long the collection contents can be treated as fresh, inspired by HTTP caching semantics. Clients may use this to determine when to refresh the collection data. An empty or absent value indicates no caching guarantee; clients should refresh the collection data on each access.
