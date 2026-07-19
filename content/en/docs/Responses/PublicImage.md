---
title: "PublicImage"
linkTitle: "PublicImage [OS]"
OpenSubsonic:
  - Extension
description: >
  Image URL for use externally, with an optional expiration
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "url": "https://your-server/public/image-123",
  "expiresAt": "2027-01-01T02:19:35.784818075Z"
}
{{< /tab >}}
{{< tab header="Subsonic">}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field       | Type     | Req.    | OpenS. | Details                                                 |
| ----------- | -------- | ------- | ------ | ------------------------------------------------------- |
| `url`       | `long`   | **Yes** |        | A URL which can be used to retrieve the requested image |
| `expiresAt` | `string` | No      |        | When the URL expires [ISO 8601]                         |

**Note**: The only requirement for the `url` returned by a server is that it **must not** encode user credentials.
This URL must be safe to be shared publicly.
