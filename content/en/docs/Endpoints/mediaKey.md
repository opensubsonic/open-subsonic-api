---
title: "mediaKey"
linkTitle: "mediaKey [OS]"
OpenSubsonic:
  - Extension
categories:
  - system
description: >
  Creates temporary media keys which can be used to authenticate to getCoverArt and stream
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `apiKeyAuthentication` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

Returns a temporary Media API key which can be used to authenticate fo media endpoints.
A media key

`http://your-server/rest/keyUrl`

### Parameters

| Parameter | Req.    | OpenS.  | Default | Comment                                                               |
| --------- | ------- | ------- | ------- | --------------------------------------------------------------------- |
| `exp`     | **Yes** | **Yes** |         | Expiration, in seconds. Minimum value of 60, maximum of 86400 (1 day) |

### Example

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`mediaKey`](../../responses/mediakey/)
Note that the expiration time **may** be overridden by the server.

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
        "mediaKey": {
        "exp": 3600,
            "key": "MEDIA_KEY"
        }
    }
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName" serverVersion="0.1.3 (tag)" openSubsonic="true">
<mediaKey exp="3600" key="TEMPORARY_API key"></mediaKey>
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field      | Type                                   | Req.    | OpenS.  | Details     |
| ---------- | -------------------------------------- | ------- | ------- | ----------- |
| `mediaKey` | [`mediaKey`](../../responses/mediakey) | **Yes** | **Yes** | A media key |
