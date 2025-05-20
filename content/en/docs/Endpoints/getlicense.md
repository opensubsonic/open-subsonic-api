---
title: "getLicense"
linkTitle: "getLicense"
categories:
- System
description: >
    Get details about the software license. 
---

`http://your-server/rest/getLicense` Since [1.0.0](../../subsonic-versions)

Get details about the software license.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getLicense.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`license`](../../responses/license) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "license": {
      "valid": true,
      "email": "demo@demo.org",
      "licenseExpires": "2017-04-11T10:42:50.842Z",
      "trialExpires": "2017-04-11T10:42:50.842Z"
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "license": {
      "valid": true,
      "email": "demo@demo.org",
      "licenseExpires": "2017-04-11T10:42:50.842Z",
      "trialExpires": "2017-04-11T10:42:50.842Z"
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `license` | [`license`](../../responses/license) | **Yes** |     | The status of the license |
