---
title: "deleteInternetRadioStation"
linkTitle: "deleteInternetRadioStation"
categories:
- Internet radio
description: >
    Deletes an existing internet radio station.
---

`http://your-server/rest/deleteInternetRadioStation` Since [1.16.0](../../subsonic-versions)

Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |    | The ID for the station. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/deleteInternetRadioStation.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

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
