---
title: "Rating ID3"
linkTitle: "Rating ID3"
OpenSubsonic:
- Extension
description: >
  Adds support for setting user ratings to ArtistID3 and AlbumID3 types.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `ratingID3` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

## Version 1

Supporting this extension means that:

- The server supports the `userRating` field on [`AlbumID3`](../Responses/AlbumID3.md) and [`ArtistID3`](../Responses/ArtistID3.md)
- The [`setRating`](../Endpoints/setrating.md) endpoint supports the `albumId` and `artistId` parameters to apply user ratings to AlbumID3 and ArtistID3.
