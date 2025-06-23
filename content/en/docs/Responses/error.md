---
title: "error"
linkTitle: "error [OS]"
opensubsonic:
  - Change
description: >
  Error.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "code": 42,
  "message": "Authentication mechanism not supported. Use API keys",
  "helpUrl": "https://example.org/users/apiKey"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "code": 40,
  "message": "Wrong username or password"
}
{{< /tab >}}
{{< /tabpane >}}

| Field     | Type     | Req.    | OpenS. | Details                                                                                       |
| --------- | -------- | ------- | ------ | --------------------------------------------------------------------------------------------- |
| `code`    | `int`    | **Yes** |        | The error code                                                                                |
| `message` | `string` | No      |        | The optional error message                                                                    |
| `helpUrl` | `string` | No      | Yes    | A URL (documentation, configuration, etc) which may provide additional context for the error) |

The following error codes are defined:

| Code | Description                                                                                                           |
| ---- | --------------------------------------------------------------------------------------------------------------------- |
| 0    | A generic error.                                                                                                      |
| 10   | Required parameter is missing.                                                                                        |
| 20   | Incompatible Subsonic REST protocol version. Client must upgrade.                                                     |
| 30   | Incompatible Subsonic REST protocol version. Server must upgrade.                                                     |
| 40   | Wrong username or password.                                                                                           |
| 41   | Token authentication not supported for LDAP users.                                                                    |
| 42   | Provided authentication mechanism not supported.                                                                      |
| 43   | Multiple conflicting authentication mechanisms provided.                                                              |
| 44   | Invalid API key.                                                                                                      |
| 50   | User is not authorized for the given operation.                                                                       |
| 60   | The trial period for the Subsonic server is over. Please upgrade to Subsonic Premium. Visit subsonic.org for details. |
| 70   | The requested data was not found.                                                                                     |
