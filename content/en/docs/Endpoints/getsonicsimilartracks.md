---
title: "getSonicSimilarTracks"
linkTitle: "getSonicSimilarTracks [OS]"
OpenSubsonic:
- Addition
categories:
- Browsing
description: >
  Returns similar tracks based on sonic (audio) analysis.
---

`http://your-server/rest/getSonicSimilarTracks`

Returns tracks that are sonically similar to a given track, based on audio analysis. Each result includes its normalized distance from the query track.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |  | The ID of the song. |
| `count` | No |  | 10 | Max number of similar tracks to return. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getSonicSimilarTracks.view?id=100&count=5&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`sonicSimilarTracksResult`](../../responses/sonicsimilartracksresult) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "sonicSimilarTracksResult": {
      "sonicMatch": [
        {
          "id": "342",
          "distance": 0.05
        },
        {
          "id": "587",
          "distance": 0.12
        },
        {
          "id": "921",
          "distance": 0.28
        },
        {
          "id": "156",
          "distance": 0.41
        },
        {
          "id": "734",
          "distance": 0.55
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `sonicSimilarTracksResult` | [`sonicSimilarTracksResult`](../../responses/sonicsimilartracksresult) | **Yes** |  | The sonic similar tracks result |
