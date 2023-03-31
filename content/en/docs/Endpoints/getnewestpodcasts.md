---
title: "getNewestPodcasts"
linkTitle: "getNewestPodcasts"
categories:
- Podcast
description: >
    Returns the most recently published Podcast episodes.
---

`http://your-server/rest/getNewestPodcasts` Since [1.13.0](../../subsonic-versions)

Returns the most recently published Podcast episodes.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `count` | No  |  | 20  | The maximum number of episodes to return. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getNewestPodcasts.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`newestPodcasts`](../../responses/newestpodcasts) element on success.

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
| `newestPodcasts` | [`newestPodcasts`](../../responses/newestpodcasts) | **Yes** |     | The podacsts |
