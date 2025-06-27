---
title: "Music Folder
linkTitle: "Music Folder"
OpenSubsonic:
  - Extension
description: >
  Adds support for the `musicFolderId` parameter on more browsing APIs.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `musicFolder` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server supports this extension, it supports the `musicFolderId` parameter on additional endpoints.

## Version 1

This version requires servers to support the `musicFolderId` parameter on calls to the following endpoints: [`getGenres`](../../endpoints/getgenres), [`getSimilarSongs2`](../../endpoints/getsimilarsongs2), and [`getTopSongs`](../../endpoints/gettopsongs). When supplied by the client, these calls must only return songs contained within the specified music folder, and only genres for which at least one song is tagged with that genre in the specified music folder.
