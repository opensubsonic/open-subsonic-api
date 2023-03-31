---
title: "search2"
linkTitle: "search2"
description: >
    Returns a listing of files matching the given search criteria. Supports paging through the result.
---

`http://your-server/rest/search2` Since [1.4.0](../../subsonic-versions)

Returns albums, artists and songs matching the given search criteria. Supports paging through the result.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `query` | **Yes** |   |  | Search query. |
| `artistCount` | No  || 20  | Maximum number of artists to return. |
| `artistOffset` | No  | |0   | Search result offset for artists. Used for paging. |
| `albumCount` | No  | |20  | Maximum number of albums to return. |
| `albumOffset` | No  || 0   | Search result offset for albums. Used for paging. |
| `songCount` | No  || 20  | Maximum number of songs to return. |
| `songOffset` | No  || 0   | Search result offset for songs. Used for paging. |
| `musicFolderId` | No  | |    | (Since [1.12.0](../../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/search2.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`searchResult2`](../../responses/searchresult2) element on success.

{{< tabpane persistLang=false >}}
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
| `searchResult2` | [`searchResult2`](../../responses/searchresult2) | **Yes** |     | The result |
