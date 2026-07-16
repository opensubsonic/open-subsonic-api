---
title: "Artist role filter"
linkTitle: "Artist role filter"
OpenSubsonic:
- Extension
description: >
  Add support for filtering artist lists by artist role.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `artistRoleFilter` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server supports this extension it means that it supports filtering the returned artists by role: the `roles` parameter of the [`getArtists`](../../endpoints/getartists) endpoint and the `artistRoles` parameter of the [`search3`](../../endpoints/search3) endpoint. (The parameter is named `artistRoles` on `search3` to disambiguate it from that endpoint's album and song results.)

## Version 1

You can now filter the artists returned by [`getArtists`](../../endpoints/getartists) and [`search3`](../../endpoints/search3) by role, letting clients choose whether they want album artists, track artists, or every artist regardless of role.

Historically these endpoints return only album artists. Some clients want the full set of artists (composers, track artists, etc.) - for example to mirror the whole library - while legacy clients rely on the album-artist-only behavior. This extension lets the client, rather than the server, decide.

The parameter value is a comma-separated list of roles as found in the [`ArtistID3`](../../responses/artistid3) `roles` field (e.g. `albumartist`, `artist`, `composer`). An artist is returned if it has **any** of the requested roles. The special value `all` returns every artist regardless of role.

The behavior when the parameter is **not** provided is left to the server (historically, returning only album artists) so that existing clients are unaffected. On [`search3`](../../endpoints/search3), the parameter only affects the returned artists; albums and songs are unaffected.

This extension requires the support of the `roles` parameter of [`getArtists`](../../endpoints/getartists) and the `artistRoles` parameter of [`search3`](../../endpoints/search3).
