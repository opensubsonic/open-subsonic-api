---
title: "cue"
linkTitle: "cue [OS]"
opensubsonic:
  - Addition
description: >
  A word or syllable cue within a cueLine.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "start": 2747,
  "end": 3018,
  "value": "눈",
  "byteStart": 0,
  "byteEnd": 2
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<cue start="2747" end="3018" byteStart="0" byteEnd="2">눈</cue>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

##### Example with byte offsets

When untimed text appears between timed cues, `byteStart` and `byteEnd` disambiguate repeated tokens by pointing at the exact substring within the parent `cueLine.value`. For example, within `cueLine.value = "Oh love love me tonight"`, the timed second `love` uses `byteStart = 8` and `byteEnd = 11`:

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "start": 900,
  "end": 1300,
  "value": "love",
  "byteStart": 8,
  "byteEnd": 11
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<cue start="900" end="1300" byteStart="8" byteEnd="11">love</cue>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field       | Type      | Req.    | OpenS.  | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ----------- | --------- | ------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `start`     | `integer` | **Yes** | **Yes** | Start time in milliseconds                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `end`       | `integer` | No      | **Yes** | End time in milliseconds. Within a [`cueLine`](../cueline), `end` **must** be either present on **all** cues or **none**. When the source provides partial end times, servers **must** fill missing values (e.g., using the next cue's `start`, or the cueLine's `end` for the final cue). When no cues have end times (e.g., Enhanced LRC with start-only timing), `end` is omitted from all cues. This is a documented contract rule; the OpenAPI schema does not enforce the all-or-none shape structurally |
| `byteStart` | `integer` | **Yes** | **Yes** | Zero-based inclusive UTF-8 byte offset into the parent [`cueLine.value`](../cueline) where this cue begins                                                                                                                                                                                                                                                                                                                                                                            |
| `byteEnd`   | `integer` | **Yes** | **Yes** | Zero-based inclusive UTF-8 byte offset into the parent [`cueLine.value`](../cueline) where this cue ends                                                                                                                                                                                                                                                                                                                                                                              |
| `value`     | `string`  | **Yes** | **Yes** | The text of this word or syllable                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

{{< alert color="primary" title="byteStart / byteEnd behavior" >}}
Every cue **must** include `byteStart` and `byteEnd`. The parent `cueLine` **must** include `value`, the offsets are calculated against the final UTF-8 encoding of that `cueLine.value` with no normalization step, and `byteStart` **must** be less than or equal to `byteEnd`. The OpenAPI schema enforces the presence of the fields, but not the cross-field ordering constraint structurally.
{{< /alert >}}

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type added in extension [`songLyrics`](../../extensions/songlyrics) version 2.
{{< /alert >}}
