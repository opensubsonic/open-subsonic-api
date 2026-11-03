---
title: "Public Image URL"
linkTitle: "Public Image URL"
OpenSubsonic:
  - Extension
description: >
  Adds support for retrieving a public image URL for items
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `publicImageURL` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

## Version 1

This extension provides a way for clients to request a public image URL.
Unlike [`getcoverart`](../../endpoints/getcoverart), the image returned here **must not require Subsonic authentication tokens**.

This extension requires the following endpoint:

- [`getPublicImageURL`](../../endpoints/getpublicimage): Returns a URL with a possible expiration that can be used to retrieve the image
