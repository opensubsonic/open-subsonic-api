---
title: "findPath"
linkTitle: "findPath [OS]"
categories:
- Browsing
OpenSubsonic:
- Addition
description: >
  Finds a path between two songs based on audio similarity.
---

`http://your-server/rest/findPath`

Finds a path of songs connecting a start song to an end song, navigating through audio similarity space using embedding vectors. Each step in the path represents a song that is similar to its neighbors.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `startSongId` | **Yes** | | | The ID of the starting song. |
| `endSongId` | **Yes** | | | The ID of the ending/target song. |
| `maxSteps` | No | | 25 | Maximum number of intermediate steps (songs) in the path. |
| `pathFixSize` | No | | false | Whether the path should have a fixed number of steps. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/findPath.view?startSongId=abc123&endSongId=def456&maxSteps=25&pathFixSize=false&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`findPathResult`](../../responses/findpathresult) element on success.

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
    "findPathResult": {
      "path": [
        {
          "itemId": "afc60df24d5bf7a6af1d0ab589d99ea5",
          "title": "Song Title A",
          "album": "Album A",
          "author": "Artist A",
          "energy": 0.08827668,
          "key": "C#",
          "scale": "minor",
          "tempo": 144.23077,
          "moodVector": "jazz:0.689,instrumental:0.521,blues:0.513,rock:0.508,funk:0.507",
          "otherFeatures": "danceable:0.59,aggressive:0.57,happy:0.61,party:0.58,relaxed:0.59,sad:0.50",
          "embeddingVector": [2.643, 2.612, -0.061]
        },
        {
          "itemId": "362b9d2b5905260e2a8185610583314c",
          "title": "Song Title B",
          "album": "Album B",
          "author": "Artist B",
          "energy": 0.09741017,
          "key": "D",
          "scale": "minor",
          "tempo": 110.29412,
          "moodVector": "jazz:0.700,instrumental:0.521,guitar:0.510,blues:0.508,rock:0.506",
          "otherFeatures": "danceable:0.56,aggressive:0.55,happy:0.58,party:0.56,relaxed:0.59,sad:0.50",
          "embeddingVector": [2.155, 2.900, -0.852]
        },
        {
          "itemId": "144aed01e7925adb4834ca3b82547c0f",
          "title": "Song Title C",
          "album": "Album C",
          "author": "Artist C",
          "energy": 0.27898812,
          "key": "D",
          "scale": "minor",
          "tempo": 125.0,
          "moodVector": "Hip-Hop:0.637,electronic:0.544,ambient:0.517,experimental:0.515,electronica:0.512",
          "otherFeatures": "danceable:0.66,aggressive:0.66,happy:0.65,party:0.64,relaxed:0.66,sad:0.63",
          "embeddingVector": [0.941, -2.331, -3.183]
        }
      ],
      "totalDistance": 2.834572709211506
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `findPathResult` | [`findPathResult`](../../responses/findpathresult) | **Yes** | | The path result |
