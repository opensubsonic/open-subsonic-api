---
title: "deletePodcastChannel"
linkTitle: "deletePodcastChannel"
categories:
- Podcast
description: >
  Deletes a Podcast channel.
---

`http://your-server/rest/deletePodcastChannel` Since [1.9.0](../../subsonic-versions)

Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |    | The ID of the Podcast channel to delete. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/deletePodcastChannel.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status":"ok",
    "version":"1.16.1",
  }
}
{{< /tab >}}
{{< /tabpane >}}
