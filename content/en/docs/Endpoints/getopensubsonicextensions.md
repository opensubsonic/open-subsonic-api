---
title: "getOpenSubsonicExtensions"
linkTitle: "getOpenSubsonicExtensions [OS]"
categories:
- System
OpenSubsonic:
- Addition
description: >
    List the OpenSubsonic extensions supported by this server.
---

`http://your-server/rest/getOpenSubsonicExtensions` OpenSubsonic version [1](../../opensubsonic-versions)

List the OpenSubsonic extensions supported by this server.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getOpenSubsonicExtensions.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`openSubsonicExtensions`](../../responses/opensubsonicextensions) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "openSubsonicExtensions": {
      "template": [
        1,
        2
      ],
      "transcodeOffset": [
        1
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// Not supported
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `openSubsonicExtensions` | [`openSubsonicExtensions`](../../responses/opensubsonicextensions)| **Yes** |   | The list of supported extensions |

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new endpoint.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| --- | --- | --- |
{{< /alert >}}
