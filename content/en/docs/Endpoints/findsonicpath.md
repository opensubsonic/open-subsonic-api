---
title: "findSonicPath"
linkTitle: "findSonicPath [OS]"
OpenSubsonic:
- Addition
categories:
- Browsing
description: >
  Finds a sonic path between two songs based on audio similarity.
---

`http://your-server/rest/findSonicPath`

Finds a path of songs connecting a start song to an end song, navigating through audio similarity space. Each song in the path includes its normalized distance from the start song.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `startSongId` | **Yes** |  |  | The ID of the starting song. |
| `endSongId` | **Yes** |  |  | The ID of the ending/target song. |
| `count` | No |  | 25 | Maximum number of songs in the path. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/findSonicPath.view?startSongId=100&endSongId=200&count=5&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`findSonicPathResult`](../../responses/findsonicpathresult) element on success.

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
    "findSonicPathResult": {
      "id": [
        "100",
        "342",
        "587",
        "921",
        "200"
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
| `findSonicPathResult` | [`findSonicPathResult`](../../responses/findsonicpathresult) | **Yes** |  | The sonic path result |
