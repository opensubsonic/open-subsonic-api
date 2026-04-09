---
title: "Infinite Library"
linkTitle: "Infinite Library"
OpenSubsonic:
- Extension
description: >
  Enables scalable, deterministic behavior for servers backed by very large or cloud-hosted music catalogs.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `infiniteLibrary` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

This extension addresses scalability and determinism challenges that arise when an OpenSubsonic server acts as a bridge to a very large music catalog (e.g., cloud-hosted services with millions of items, or large self-hosted collections with ambiguous metadata).

The core principle is: **prefer IDs over strings, and allow clients to request only what they need.**

## Motivation

Several existing endpoints were designed with the assumption that the server has a small, fully-indexed local library. When libraries grow to millions of items, or when the server proxies an external catalog:

- String-based artist lookups become ambiguous (e.g., multiple artists named "Savant")
- Returning all three result types (artists, albums, songs) for every search wastes resources when the client only needs one
- Clients cannot distinguish exact matches from fuzzy ones
- Cover art proxying creates unnecessary load when direct URLs are available

## Version 1

### `getTopSongs` — ID-based artist resolution

The `getTopSongs` endpoint currently requires an `artist` string parameter. This extension adds an optional `artistId` parameter that, when provided, takes precedence over the `artist` string and eliminates ambiguity.

**New parameter:**

| Parameter | Req. | Default | Comment |
| --- | --- | --- | --- |
| `artistId` | No |  | The artist ID. If provided, the server MUST use this instead of the `artist` string for lookups. |

When `artistId` is provided, the `artist` parameter becomes optional. Servers MUST return an error if neither `artist` nor `artistId` is provided.

### `search3` — Type filtering and match precision

This extension adds optional parameters to `search3` that allow clients to express their intent more precisely:

**New parameters:**

| Parameter | Req. | Default | Comment |
| --- | --- | --- | --- |
| `type` | No |  | Comma-separated list of result types to include: `artist`, `album`, `song`. If omitted, all types are returned (current behavior). |

When `type` is specified, the server SHOULD skip computation for excluded types entirely, not just omit them from the response. For example, `type=album` means the server does not need to search for artists or songs at all.

This is semantically different from setting `artistCount=0&songCount=0`, which currently has undefined behavior — some servers still perform the search and discard results, others may ignore zero counts entirely.

### `AlbumID3` and `Child` — Embedded cover art URLs

This extension adds an optional `coverArtUrl` field to `AlbumID3` and `Child` responses:

| Field | Type | Req. | Details |
| --- | --- | --- | --- |
| `coverArtUrl` | `string` | No | A direct URL to the cover art image. If present, clients SHOULD prefer this over calling `getCoverArt`. |

This reduces the N+1 problem where displaying 25 search results requires 25 additional `getCoverArt` calls. Servers that host artwork on CDNs or proxy external catalogs can embed the URL directly.

### Error code 71 — Library too large

When a client sends an empty `query` to `search3` (which OpenSubsonic requires servers to support for offline sync), servers with very large catalogs MAY return error code `71` with a message indicating that full library enumeration is not supported.

| Code | Description |
| --- | --- |
| 71 | The requested operation would return too many results. The client should refine the query. |

### `searchResult3` — Total count metadata

This extension adds optional count fields to the `searchResult3` response:

| Field | Type | Req. | Details |
| --- | --- | --- | --- |
| `totalArtistCount` | `int` | No | Total number of matching artists (may exceed returned count due to pagination). |
| `totalAlbumCount` | `int` | No | Total number of matching albums. |
| `totalSongCount` | `int` | No | Total number of matching songs. |

This allows clients to show "Showing 20 of 1,432 results" and implement proper pagination UIs without guessing.

## Version 2

### Batch fetch endpoints

New endpoints for fetching multiple items in a single request:

- [`getAlbumsBatch`](../invalid) Fetch up to 50 albums by their IDs in a single call.
- [`getSongsBatch`](../invalid) Fetch up to 50 songs by their IDs in a single call.
- [`getArtistsBatch`](../invalid) Fetch up to 50 artists by their IDs in a single call.

Each endpoint accepts an `id` parameter that can be specified multiple times (e.g., `id=1&id=2&id=3`), following the same pattern as `star`/`unstar`.

### `stream` — Adaptive streaming mode

A new optional parameter for the `stream` endpoint:

| Parameter | Req. | Default | Comment |
| --- | --- | --- | --- |
| `streamMode` | No | `binary` | `binary`: current behavior (raw audio bytes). `redirect`: server returns a 302 redirect to the actual audio URL. `manifest`: server returns an HLS/DASH manifest if the source supports it. |

Clients that support adaptive streaming can request `manifest` mode, which avoids server-side stream stitching. The `redirect` mode is useful for native apps that can handle direct URLs and don't need the server to proxy bytes.

## Version 3

### Discovery types for cloud catalogs

New values for the `type` parameter in `getAlbumList2`:

| Type | Description |
| --- | --- |
| `trending` | Currently popular on the platform. |
| `recommended` | Personalized recommendations for the authenticated user. |

### Server library type

The `ping` / `subsonic-response` is extended with:

| Field | Type | Req. | Details |
| --- | --- | --- | --- |
| `libraryType` | `string` | No | `local`, `remote`, or `hybrid`. Indicates whether the server hosts files locally, proxies a remote catalog, or both. |

Clients can use this to adjust their UI — for example, hiding "scan library" buttons for remote servers, or disabling offline sync for catalogs that are too large.
