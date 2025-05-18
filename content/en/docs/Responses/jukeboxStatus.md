---
title: "jukeboxStatus"
linkTitle: "jukeboxStatus"
description: >
  jukeboxStatus.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "currentIndex": 7,
  "playing": true,
  "gain": 0.9,
  "position": 67
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "currentIndex": 7,
  "playing": true,
  "gain": 0.9,
  "position": 67
}
{{< /tab >}}
{{< /tabpane >}}

| Field          | Type      | Req.    | OpenS. | Details                                      |
| -------------- | --------- | ------- | ------ | -------------------------------------------- |
| `currentIndex` | `int`     | **Yes** |        | The current index of the song being played   |
| `playing`      | `boolean` | **Yes** |        | Whether the queue is currently playing       |
| `gain`         | `float`   | **Yes** |        | Volume, in a range of [0.0, 1.0]             |
| `position`     | `int`     | No      |        | The current position of the track in seconds |
