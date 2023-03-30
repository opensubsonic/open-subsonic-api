---
title: "getPlayQueue"
linkTitle: "getPlayQueue"
description: >
    Returns the state of the play queue for this user.
---

`http://your-server/rest/getPlayQueue` Since [1.12.0](../../subsonic-versions)

Returns the state of the play queue for this user (as set by `savePlayQueue`). This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} <http://your-server/rest/getPlayQueue.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json> {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`playQueue`](../../responses/playqueue) element on success.

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
| `playQueue` | [`playQueue`](../../responses/playqueue) | **Yes** |     | The play queue|
