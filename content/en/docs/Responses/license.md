---
title: "license"
linkTitle: "license"
description: >
  getLicense result.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "valid": true,
  "email": "demo@demo.org",
  "licenseExpires": "2017-04-11T10:42:50.842Z",
  "trialExpires": "2017-04-11T10:42:50.842Z"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "valid": true,
  "email": "demo@demo.org",
  "licenseExpires": "2017-04-11T10:42:50.842Z",
  "trialExpires": "2017-04-11T10:42:50.842Z"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `valid` | `boolean` | **Yes** |     | The status of the license |
| `email` | `string` | No |     | User email |
| `licenseExpires` | `string` | No |     | End of license date. [ISO 8601] |
| `trialExpires` | `string` | No |    | End of trial date. [ISO 8601] |
