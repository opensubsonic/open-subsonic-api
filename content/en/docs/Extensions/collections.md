---
title: "Collections"
linkTitle: "Collections"
OpenSubsonic:
- Extension
description: >
  Add support for collections.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `collections` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

This extension allows users to create and manage collections.
A collection is an ordered list of items - songs, artist, albums, playlists.

## Version 1

Servers that support this extension provide the following endpoints:

- [`getCollections`](../../endpoints/getCollections)
- [`getCollection`](../../endpoints/getCollection)
- [`createCollection`](../../endpoints/createCollection)
- [`updateCollection`](../../endpoints/updateCollection)
- [`deleteCollection`](../../endpoints/deleteCollection)
