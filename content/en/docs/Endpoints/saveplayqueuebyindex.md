---
title: "savePlayQueueByIndex"
linkTitle: "savePlayQueueByIndex [OS]"
categories:
  - Bookmarks
OpenSubsonic:
  - Extension
description: >
  Saves the state of the play queue for this user.
---

`http://your-server/rest/savePlayQueueByIndex` Since [1.12.0](../../subsonic-versions)

Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

Uses an index instead, as this allows for uniquely identifying play queues which may have multiple copies of the same track.

### Parameters

| Parameter      | Req. | OpenS. | Default | Comment                                                                                                        |
| -------------- | ---- | ------ | ------- | -------------------------------------------------------------------------------------------------------------- |
| `id`           | No   |        |         | ID of a song in the play queue. Use one `id` parameter for each song in the play queue.                        |
| `currentIndex` | No   |        |         | The 1-based index of the current playing track. This must be between 1 and the length of the queue (inclusive) |
| `position`     | No   |        |         | The position in milliseconds within the currently playing song.                                                |

### Example

{{< alert color="primary" >}} `http://your-server/rest/savePlayQueueByIndex.view?id=123&currentIndex=1&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
{{< tab header="Subsonic" >}}
Does not exist
{{< /tab >}}
{{< /tabpane >}}

{{< alert color="warning" title="OpenSubsonic" >}}
**Note** `id` is optional. Send a call without any parameters to clear the currently saved queue.
In this case, `currentIndex` **must not** be set.

If `currentIndex` is less than 1 or larger than the queue, the server **must** respond with error code 10.
{{< /alert >}}
