---
title: "search"
linkTitle: "search"
categories:
- Searching
description: >
    Returns a listing of files matching the given search criteria. Supports paging through the result.
---

`http://your-server/rest/search` Since [1.0.0](../../subsonic-versions)

Deprecated since [1.4.0](../../subsonic-versions), use [`search2`](../search2) instead.

Returns a listing of files matching the given search criteria. Supports paging through the result.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `artist` | No  ||       | Artist to search for. |
| `album` | No  | |      | Album to searh for. |
| `title` | No  | |      | Song title to search for. |
| `any` | No  |  |     | Searches all fields. |
| `count` | No  | |  20  | Maximum number of results to return. |
| `offset` | No  | |  0   | Search result offset. Used for paging. |
| `newerThan` | No  | |      | Only return matches that are newer than this. Given as milliseconds since 1970. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/search.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`searchResult`](../../responses/searchresult) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `searchResult` | [`searchResult`](../../responses/searchresult) | **Yes** |     | The result |
