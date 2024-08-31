---
title: "keyUrl"
linkTitle: "keyUrl [OS]"
OpenSubsonic:
  - Extension
categories:
  - system
description: >
  Returns a URL which points to either documentation or a page to generate API keys
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `apiKeyAuthentication` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

Returns a URL which points to either documentation or a page to generate API keys.
Note that this endpoint **must** be public

`http://your-server/rest/keyUrl`

### Parameters

Takes **no** parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

An [`subsonic-response`](../../responses/subsonic-response) element with a nested [`keyUrl`](../../responses/keyurl).

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
        "keyUrl": {
            "url": "https://example.org/user/newApiKey"
        }
    }
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName" serverVersion="0.1.3 (tag)" openSubsonic="true">
<keyUrl url="https://example.org/user/newApiKey"></keyUrl>
</subsonic-response>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field    | Type                               | Req.    | OpenS.  | Details                   |
| -------- | ---------------------------------- | ------- | ------- | ------------------------- |
| `keyUrl` | [`keyUrl`](../../responses/keyurl) | **Yes** | **Yes** | List of structured lyrics |
