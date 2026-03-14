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
- `kind` field on [`structuredLyrics`](../../responses/structuredlyrics) to classify independent lyric layers (`main`, `translation`, `pronunciation`)
- [`agent`](../../responses/agent) objects within an optional `agents` array on [`structuredLyrics`](../../responses/structuredlyrics) for reusable agent attribution metadata
- [`cueLine`](../../responses/cueline) array on [`structuredLyrics`](../../responses/structuredlyrics) for word/syllable-level timing
- `agentId` field on [`cueLine`](../../responses/cueline) to reference an [`agent`](../../responses/agent) in the same `structuredLyrics` entry
- [`cue`](../../responses/cue) objects within each `cueLine` for individual word/syllable timestamps

When agent attribution is present, the reusable agent metadata lives once in `structuredLyrics.agents`, while each `cueLine` points at the relevant agent via `agentId`. Simple unattributed single-layer lyrics may omit `agents` entirely. Entries with multiple vocal agents/layers **must** emit `agents`, and every attributed entry that uses `agents` **must** define exactly one `role: "main"` agent. A single-agent attributed/default layer may also use `agents` with that lone agent marked as `main`.

All new fields are gated behind `enhanced=true` — without it, the response is identical to version 1.

Servers that support Version 2 should advertise `songLyrics` versions `[1, 2]` via [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions).

This extension requires the following endpoints:

- [`getLyricsBySongId`](../../endpoints/getlyricsbysongid): Fetch structured song lyrics by id (with optional `enhanced` parameter)
