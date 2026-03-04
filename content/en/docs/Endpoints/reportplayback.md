---
title: "reportPlayback"
linkTitle: "reportPlayback [OS]"
OpenSubsonic:
  - Extension
categories:
  - Media annotation
description: >
  Reports playback timeline state for a song.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playbackReport` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

`http://your-server/rest/reportPlayback`

Reports playback timeline state for a song. Clients should call the endpoint at least on each state change. The end point can be called every X seconds by clients, but servers should estimate current position based on playbackRate for up to date data between calls. Servers should not assume a media is played after the calculated end of content, but needs to wait for a stopped state. 30 minutes after the planned end of the media, servers should stop listening to events and clients should use the normal scrobble endpoint after reconnection from offline.

The starting state is an indicator that the player is starting (or restarting) the media, if the server support scrobble this is the indicator to start monitoring for this playback session even if it's the same song.
The server should only start moving it's internal clock after the state changes to playing to take in account possible long buffering.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `mediaId` | **Yes** | **Yes** | | The ID of the media being reported. |
| `mediaType` | **Yes** | **Yes** | | Either song or podcast so the server knows what the mediaId is referring to.  |
| `positionMs` | **Yes** | **Yes** | | The playback position in milliseconds. |
| `state` | **Yes** | **Yes** | | Playback state: `starting`, `playing`, `paused`, or `stopped`. |
| `playbackRate` | No | **Yes** | `1.0` | Playback speed multiplier. |
| `ignoreScrobble` | No | **Yes** | `false` | If true, server should only update now-playing display/state and should not trigger scrobble/playcount side effects. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/reportPlayback.view?mediaId=123&mediaType=song&positionMs=120000&state=playing&playbackRate=1.0&ignoreScrobble=false&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

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
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new extension endpoint.
{{< /alert >}}
