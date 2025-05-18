---
title: "tokenInfo"
linkTitle: "tokenInfo [OS]"
opensubsonic:
  - Addition
description: >
  Information about an API key
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic JSON" lang="json">}}
{
  "tokenInfo": {
    "username": "token username"
  }
}
{{< /tab >}}
{{< tab header="OpenSubsonic XML" lang="xml">}}
<tokenInfo username="token username"></tokenInfo>
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field      | Type   | Req.    | OpenS.  | Details                        |
| ---------- | ------ | ------- | ------- | ------------------------------ |
| `username` | string | **Yes** | **Yes** | Username associated with token |
