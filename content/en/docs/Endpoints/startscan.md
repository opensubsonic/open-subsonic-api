---
title: "startScan"
linkTitle: "startScan"
categories:
- Media library scanning
description: >
    Initiates a rescan of the media libraries.
---

`http://your-server/rest/startScan` Since [1.15.0](../../subsonic-versions)

Initiates a rescan of the media libraries. Takes no extra parameters.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/startScan.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`scanStatus`](../../responses/scanstatus) element on success.

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
    "scanStatus": {
      "scanning": true,
      "count": 1
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "scanStatus": {
      "scanning": true,
      "count": 0
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `scanStatus` | [`scanStatus`](../../responses/scanstatus) | **Yes** |     | The status of the scan |
