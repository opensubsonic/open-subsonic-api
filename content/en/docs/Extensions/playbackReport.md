---
title: "Playback Report"
linkTitle: "Playback Report"
OpenSubsonic:
  - Extension
description: >
  Add support for client playback timeline reporting.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playbackReport` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server supports this extension, it provides the [`reportPlayback`](../../endpoints/reportplayback) endpoint and can expose timeline fields in [`getNowPlaying`](../../endpoints/getnowplaying) responses.

## Version 1

Clients can report playback status with `mediaId`, `mediaType`, `positionMs`, `state`, `playbackRate`, and `ignoreScrobble`.

When `ignoreScrobble=true`, the server should only update now playing display/state fields and should not perform playcount/scrobble side effects.
