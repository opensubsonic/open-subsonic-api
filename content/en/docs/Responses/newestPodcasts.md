---
title: "newestPodcasts"
linkTitle: "newestPodcasts [OS]"
description: >
  NewestPodcasts.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `totalCount` | Int | No |  **Yes**  | Total item count for the request ignoring `size` and `offset` limits. Use `-1` to denote unsupported, unknown or uncounted values. |
| `episode` | Array of [`Child`](../child) | No |     | Podcast Episode |
