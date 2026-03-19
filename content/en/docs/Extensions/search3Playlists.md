---
title: "search3 Playlists"
linkTitle: "search3 Playlists"
OpenSubsonic:
- Extension
description: >
  Allows searching for playlists by query text.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `search3Playlists` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

Allows searching for playlists by query text. Adds `playlistCount` and `playlistOffset` params to [`search3`](../../endpoints/search3) endpoint.

## Version 1

Adds parameters to [`search3`](../../endpoints/search3):

- `playlistCount`
- `playlistOffset`

When the user wants to search for a playlist by name, call this endpoint with the query text and specify a positive integer for `playlistCount`. Page through additional results if needed with `playlistOffset`.

The server **should** use the query text to search playlist names.

The server **may** also use the query text to search playlists by other metadata; this is an implementation detail left up to the server developer. However it is implemented, the server **should not** return playlist results irrelevant to the user's query.

The server **may** order playlist results by name, by relevance, or by some other criteria. The same input **should** return results in the same order every time (deterministic).
