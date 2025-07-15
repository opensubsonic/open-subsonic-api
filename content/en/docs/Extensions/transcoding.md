---
title: "Transcoding"
linkTitle: "Transcoding"
OpenSubsonic:
  - Extension
description: >
  Adds support for clients to make transcoding decisions and retrieve transcoded media streams.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name**: `transcoding` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

## Version 1

This extension provides a way for clients to get a server's decision on whether a media file should be transcoded and to retrieve the transcoded stream if necessary.

This extension requires the following endpoints:

- [`getTranscodeDecision`](../../endpoints/gettranscodedecision): Returns a transcode decision for a given media file.
- [`getTranscodeStream`](../../endpoints/gettranscodestream): Returns a transcoded media stream.
