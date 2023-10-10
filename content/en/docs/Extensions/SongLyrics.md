---
title: "Song Lyrics"
linkTitle: "Song Lyrics"
OpenSubsonic:
- Extension
description: >
    Allow requesting lyrics for a specific song.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `songLyrics` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server support this extension this means that it support the `songId` parameter of the [`getLyrics`](../../endpoints/getlyrics) endpoint to return lyrics associated with that song (Embedded, local lrc file, ...).

## Version 1

Confidently request lyrics for a specific song. The server should return any lyrics associated with the song if supported. (Embedded, external .lrc file, manually fetched, ...)

This extension requires the support of the `songId` parameter of the [`getLyrics`](../../endpoints/getlyrics) endpoint.

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| --- | --- | --- |
{{< /alert >}}
