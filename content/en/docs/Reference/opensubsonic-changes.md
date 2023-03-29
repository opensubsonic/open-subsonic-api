---
title: "OpenSubsonic changes"
linkTitle: "OpenSubsonic changes"
weight: 5
description: >
  The list of all API changes in OpenSubsonic API vs the original Subsonic API.
---

## Changes

In the documentation all changes from the original Subsonic API will be emphasized with the following warning:

{{< alert color="warning" title="OpenSubsonic" >}}Changes (Required or optional) related to OpenSubsonic.{{< /alert >}}

All endpoints or responses modified by the OpenSubsonic API will have **[OS]** indicator in the navigation menu.

### Subsonic-response

Servers compatible with OpenSubsonic must return an expanded [`subsonic-response`](../api-reference#subsonic-response) containing server name and optional server version.

### Search3

Servers compatible with OpenSubsonic must accept an empty query for [`search3`](../endpoints/search3#subsonic-response).

### Responses

Servers compatible with OpenSubsonic can return additional information for the media see the different [responses](../responses).
