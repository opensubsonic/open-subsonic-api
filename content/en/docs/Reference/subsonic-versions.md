---
title: "Subsonic API versions"
linkTitle: "Subsonic API versions"
weight: 100
description: >
  Subsonic API versions.
---

## Versions

This table shows the REST API version implemented in different Subsonic versions:

| Subsonic version | REST API version |
| --- | --- |
| 6.1.4 | [1.16.1](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.16.1.xsd) |
| 6.1.2 | [1.16.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.16.0.xsd) |
| 6.1 | [1.15.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.15.0.xsd) |
| 6.0 | [1.14.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.14.0.xsd) |
| 5.3 | [1.13.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.13.0.xsd) |
| 5.2 | [1.12.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.12.0.xsd) |
| 5.1 | [1.11.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.11.0.xsd) |
| 4.9 | [1.10.2](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.10.2.xsd) |
| 4.8 | [1.9.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.9.0.xsd) |
| 4.7 | [1.8.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.8.0.xsd) |
| 4.6 | [1.7.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.7.0.xsd) |
| 4.5 | [1.6.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.6.0.xsd) |
| 4.4 | [1.5.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.5.0.xsd) |
| 4.2 | [1.4.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.4.0.xsd) |
| 4.1 | [1.3.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.3.0.xsd) |
| 4.0 | [1.2.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.2.0.xsd) |
| 3.9 | [1.1.1](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.1.1.xsd) |
| 3.8 | [1.1.0](http://subsonic.org/pages/inc/api/schema/subsonic-rest-api-1.1.0.xsd) |

Note that a Subsonic-compatible server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.

{{< alert color="warning" title="OpenSubsonic" >}}OpenSubsonic servers should support at least **1.14.0**. It is not required to support version **1.16.1**, but this is still highly recommended.{{< /alert >}}
