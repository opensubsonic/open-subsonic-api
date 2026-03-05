---
title: "Song Lyrics"
linkTitle: "Song Lyrics"
OpenSubsonic:
  - Extension
description: >
  Add support for synchronized lyrics, multiple languages, and retrieval by song ID.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `songLyrics` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

## Version 1

Line-level structured lyrics with multi-language support.

This extension requires the following endpoints:

- [`getLyricsBySongId`](../../endpoints/getlyricsbysongid): Fetch structured song lyrics by id

## Version 2

Word/syllable-level timing (karaoke) and lyric layer classification (translations, pronunciations).

Adds:

- `enhanced` query parameter on [`getLyricsBySongId`](../../endpoints/getlyricsbysongid) to opt-in to enhanced lyrics data
- `kind` field on [`structuredLyrics`](../../responses/structuredlyrics) to classify lyric tracks (`main`, `translation`, `pronunciation`)
- [`cueLine`](../../responses/cueline) array on [`structuredLyrics`](../../responses/structuredlyrics) for word/syllable-level timing
- [`cue`](../../responses/cue) objects within each `cueLine` for individual word/syllable timestamps
- `role` field on [`cueLine`](../../responses/cueline) for vocal part identification (`bg`, `voice1`–`voiceN`, `group`)

All new fields are gated behind `enhanced=true` — without it, the response is identical to version 1.

This extension requires the following endpoints:

- [`getLyricsBySongId`](../../endpoints/getlyricsbysongid): Fetch structured song lyrics by id (with optional `enhanced` parameter)
