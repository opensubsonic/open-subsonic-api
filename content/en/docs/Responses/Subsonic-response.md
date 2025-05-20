---
title: "subsonic-response"
linkTitle: "subsonic-response [OS]"
opensubsonic:
- Change
description: >
  Common answer wrapper.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `status` | `string` | **Yes** |     | The command result. `ok` or `failed` |
| `version` | `string` | **Yes** |     | The server supported Subsonic API version. |
| `type` | `string` | **Yes** | **Yes**    | The server actual name. [Ex: `Navidrome` or `gonic`] |
| `serverVersion` | `string` | **Yes** | **Yes**    | The server actual version. [Ex: `1.2.3 (beta)`] |
| `openSubsonic` | `boolean` | **Yes**  | **Yes**    | Must return true if the server support OpenSubsonic API v1 |
| `error` |  [`error`](../error) | No |    | The error details when `status` is `failed` |

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `type` containing the server type/name (Ex: Navidrome or gonic). Mandatory to help clients adapt to actual Subsonic API support.
- `serverVersion` containing the server version (Ex: 1.2.3) this is different from the `version` field that expose the Subsonic API version. Mandatory for clients to be able to detect servers updates and check again supported OpenSubsonic extensions.
- `openSubsonic` must return true if the server support OpenSubsonic API v1
{{< /alert >}}
