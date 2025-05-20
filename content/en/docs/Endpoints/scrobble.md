---
title: "scrobble"
linkTitle: "scrobble"
categories:
- Media annotation
description: >
    Registers the local playback of one or more media files.
---

`http://your-server/rest/scrobble` Since [1.5.0](../../subsonic-versions)

Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:

- "Scrobbles" the media files on last.fm if the user has configured his/her last.fm credentials on the server.
- Updates the play count and last played timestamp for the media files. (Since [1.11.0](../../subsonic-versions))
- Makes the media files appear in the "Now playing" page in the web app, and appear in the list of songs returned by `getNowPlaying` (Since [1.11.0](../../subsonic-versions))

Since [1.8.0](../../subsonic-versions) you may specify multiple `id` (and optionally `time`) parameters to scrobble multiple files.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |   |  | A string which uniquely identifies the file to scrobble. |
| `time` | No  |  |   | (Since [1.8.0](../../subsonic-versions)) The time (in milliseconds since 1 Jan 1970) at which the song was listened to. |
| `submission` | No | | True | Whether this is a "submission" or a "now playing" notification. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/scrobble.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

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
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}
