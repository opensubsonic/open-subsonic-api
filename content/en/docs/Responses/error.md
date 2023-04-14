---
title: "error"
linkTitle: "error"
description: >
  Error.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "code": 40,
  "message": "Wrong username or password"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "code": 40,
  "message": "Wrong username or password"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `code` | `int` | **Yes** |     | The error code |
| `message` | `string` | No |     | The optional error message |

The following error codes are defined:

| Code | Description |
| --- | --- |
| 0   | A generic error. |
| 10  | Required parameter is missing. |
| 20  | Incompatible Subsonic REST protocol version. Client must upgrade. |
| 30  | Incompatible Subsonic REST protocol version. Server must upgrade. |
| 40  | Wrong username or password. |
| 41  | Token authentication not supported for LDAP users. |
| 50  | User is not authorized for the given operation. |
| 60  | The trial period for the Subsonic server is over. Please upgrade to Subsonic Premium. Visit subsonic.org for details. |
| 70  | The requested data was not found. |
