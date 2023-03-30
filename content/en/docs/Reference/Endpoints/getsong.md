---
title: "getSong"
linkTitle: "getSong"
description: >
    Returns details for a song.
---

`http://your-server/rest/getSong` Since [1.8.0](../../subsonic-versions)

Returns details for a song.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |   |    | The song ID. |

### Example

{{< alert color="primary" >}} <http://your-server/rest/getSong.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeServerName&f=json> {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`song`](../../responses/song) element on success.

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
| `song` | [`song`](../../responses/song) | **Yes** |     | The song |
