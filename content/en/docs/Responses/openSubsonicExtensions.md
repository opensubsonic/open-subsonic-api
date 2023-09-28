---
title: "openSubsonicExtensions"
linkTitle: "openSubsonicExtensions [OS]"
description: >
  Supported OpenSubsonic API extensions.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "template": [
    1,
    2
  ],
  "transcodeOffset": [
    1
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// Not supported
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `template` | Array of `int` | No |     | The list of supported versions of the [`template`](../../extensions/template) extension |
| `extension2` | Array of `int` | No |     | The list of supported versions of the `extension2` extension |
| ... | Array of `int` | No |     | The list of supported versions of the `...` extension |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new response type.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| --- | --- | --- |
{{< /alert >}}
