---
title: "Transcode Offset"
linkTitle: "Transcode Offset"
OpenSubsonic:
- Extension
description: >
    Add support for start offset for transcoding.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `transcodeOffset` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server support this extension this means that it support the `timeOffset` parameter of the [`stream`](../../endpoints/stream) endpoint for music.

## Version 1

You can now start transcoding at any position in the media, allowing seeking when transcoding on the clients!

This extension requires the support of the `timeOffset` parameter of the [`stream`](../../endpoints/stream) endpoint for music.
