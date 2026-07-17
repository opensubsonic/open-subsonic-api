---
title: "Top songs by artist ID"
linkTitle: "Top songs by artist ID"
OpenSubsonic:
- Extension
description: >
  Add support for retrieving top songs by artist ID.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `topSongsByArtistId` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server supports this extension it accepts the `id` parameter of the [`getTopSongs`](../../endpoints/gettopsongs) endpoint, allowing clients to look up top songs by artist ID instead of by name.

## Version 1

You can now request top songs by passing an artist `id` to [`getTopSongs`](../../endpoints/gettopsongs), avoiding the ambiguity of matching by artist name.

This extension requires the support of the `id` parameter of the [`getTopSongs`](../../endpoints/gettopsongs) endpoint. When provided, `id` takes precedence over `artist`.
