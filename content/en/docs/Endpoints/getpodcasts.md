---
title: "getPodcasts"
linkTitle: "getPodcasts"
categories:
- Podcast
description: >
    Returns all Podcast channels the server subscribes to, and (optionally) their episodes.
---


`http://your-server/rest/getPodcasts` Since [1.6.0](../../subsonic-versions)

Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the `id` parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `includeEpisodes` | No  |  |true | (Since [1.9.0](../../subsonic-versions)) Whether to include Podcast episodes in the returned result. |
| `id` | No  |   |   | (Since [1.9.0](../../subsonic-versions)) If specified, only return the Podcast channel with this ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getPodcasts.view?title=tata&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`podcasts`](../../responses/podcasts) element on success.

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
| `podcasts` | [`podcasts`](../../responses/podcasts) | **Yes** |     | The podacsts |
