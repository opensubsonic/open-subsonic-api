---
title: "tokenInfo"
linkTitle: "tokenInfo [OS]"
opensubsonic:
  - Addition
  - Extension
categories:
  - System
description: >
  Returns information about an API key
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `apiKeyAuthentication` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

Returns data about an API key.

`http://your-server/rest/tokenInfo`

### Parameters

None

### Example

{{< alert color="primary" >}} `http://your-server/rest/tokenInfo.view?apiKey=1234&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}


### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`tokenInfo`](../../responses/tokenInfo/) on success, or error 44 on invalid token.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
"subsonic-response": {
  "status": "ok",
  "version": "1.16.1",
  "type": "AwesomeServerName",
  "serverVersion": "0.1.3 (tag)",
  "openSubsonic": true,
    "tokenInfo": {
      "username": "token username"
    }
  }
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName" serverVersion="0.1.3 (tag)" openSubsonic="true">
  <tokenInfo username="token username"></tokenInfo>
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field       | Type                                     | Req.    | OpenS.  | Details                   |
| ----------- | ---------------------------------------- | ------- | ------- | ------------------------- |
| `tokenInfo` | [`tokenInfo`](../../responses/tokeninfo) | **Yes** | **Yes** | Information about the token |
