---
title: "getStarred"  
linkTitle: "getStarred"
description: >
    Returns starred songs, albums and artists.
---

`http://your-server/rest/getStarred` Since [1.8.0](../../subsonic-versions)

Returns starred songs, albums and artists.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `musicFolderId` | No  |  |    | (Since [1.12.0](../../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} <http://your-server/rest/getStarred.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json> {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`starred`](../../responses/starred) element on success.

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
| `starred` | [`starred`](../../responses/starred) | **Yes** |     | The song |
