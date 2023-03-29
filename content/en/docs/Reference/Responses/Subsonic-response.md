---
title: "subsonic-response"
linkTitle: "subsonic-response [OS]"
description: >
  Common answer wrapper.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}{
  "subsonic-response": {
    "status":"ok",
    "version":"1.16.1",
    "type":"AwesomeServerName",
    "serverVersion":"0.1.3 (tag)"
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}{
  "subsonic-response": {
    "status":"ok",
    "version":"1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `status` | `string` | **Yes** |     | The command result. `ok` or `failed` |
| `version` | `string` | **Yes** |     | The server supported Subsonic API version. |
| `type` | `string` | **Yes** | **Yes**    | The server actual name. [Ex: `Navidrome` or `Gonic`] |
| `serverVersion` | `string` | No | **Yes**    | The server actual version. [Ex: `1.2.3 (beta)`] |

{{< alert color="warning" title="OpenSubsonic" >}}New fields are added:

- `type` containing the server type/name (Ex: Navidrome or Gonic)
- `serverVersion` containing the server version (Ex: 1.2.3) this is different from the `version` field that expose the Subsonic API version.
{{< /alert >}}

---

### OpenSubsonic server support

| Server | Min vers. | Comment |
| --- | --- | --- |
| **Navidrome** |  | Support `type` and `serverVersion` |
| **Gonic** |  | Support `type` |
| **Ampache** | 5.5.6 | Support `type` and `serverVersion`|
| **Funkwhale** |  |  Support `type`, version is exposed as `funkwhaleVersion` |
| **Astiga** |  | Expose `Astiga/production` in `serverVersion` |
| **LMS** |  | Support `type` |
