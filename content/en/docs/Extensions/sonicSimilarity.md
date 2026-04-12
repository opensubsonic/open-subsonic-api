---
title: "Sonic similarity"
linkTitle: "Sonic similarity"
OpenSubsonic:
- Extension
description: >
  A sonic similarity extension.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `sonicSimilarity` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

## Version 1

This extension adds two new audio-similarity endpoints:

- [`findSonicPath`](../../endpoints/findSonicPath)
- [`getSonicSimilarTracks`](../../endpoints/getSonicSimilarTracks)

These endpoints return a list of [`sonicMatch`](../../responses/sonicmatch) entries, each with a `Child` entry and a normalized similarity score.
