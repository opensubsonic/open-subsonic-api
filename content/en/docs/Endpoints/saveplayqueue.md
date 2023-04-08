---
title: "savePlayQueue"
linkTitle: "savePlayQueue"
categories:
- Bookmarks
description: >
    Saves the state of the play queue for this user.
---

`http://your-server/rest/savePlayQueue` Since [1.12.0](../../subsonic-versions)

Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |   | ID of a song in the play queue. Use one `id` parameter for each song in the play queue. |
| `current` | No  |   |  | The ID of the current playing song. |
| `position` | No  |  |   | The position in milliseconds within the currently playing song. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/savePlayQueue.view?id=123&current=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

{{< tabpane persistLang=false >}}
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
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}
