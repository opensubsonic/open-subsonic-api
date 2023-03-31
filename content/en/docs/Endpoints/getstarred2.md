---
title: "getStarred2"
linkTitle: "getStarred2"
categories:
- Lists
description: >
    Returns starred songs, albums and artists.
---

`http://your-server/rest/getStarred2` Since [1.8.0](../../subsonic-versions)

Similar to [`getStarred`](../getstarred), but organizes music according to ID3 tags.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `musicFolderId` | No  |  |    | (Since [1.12.0](../../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getStarred2.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`starred2`](../../responses/starred2) element on success.

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
| `starred2` | [`starred2`](../../responses/starred2) | **Yes** |     | The song |
