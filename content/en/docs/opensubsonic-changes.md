---
title: "OpenSubsonic changes"
linkTitle: "OpenSubsonic changes"
weight: 5
description: >
 API changes in OpenSubsonic API vs the original Subsonic API.
---

## Changes

In the documentation all changes from the original Subsonic API will be emphasized with the following warning:

{{< alert color="warning" title="OpenSubsonic" >}}
Changes (Required or optional) related to OpenSubsonic.
{{< /alert >}}

All endpoints or responses modified by the OpenSubsonic API will have **[OS]** indicator in the navigation menu.

OpenSubsonic server support will documented by a table at the end of the corresponding page. (Ex: [search3](../endpoints/search3))

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| --- | --- | --- |
| **Navidrome** | 0.3.0 | Support `query=""` |
| **Gonic** | 0.15.0 | Support `query=""` |
| **Ampache** | 5.5.7 | Support `query=""` |
| **Funkwhale** | 1.2.8 | Support not passing a query parameter. |
| **Astiga** |  | Support `query=` |
| **LMS** | 3.35.1 | Support `query=` |
{{< /alert >}}

OpenSubsonic expand the original API via 3 different ways:

- **Clarifications**: Documentation improvement to ensure consistency in server answers or actions where doubt was possible.
- **Extensions**: Non breaking changes to the API to improve clients life. Like new returned field, or new parameters to existing functions.
- **Additions**: New endpoints added to provide functions that could not be provided via non breaking extensions.

### Clarifications

[List of clarifications](/opensubsonic/clarification/)

### Extensions

[List of extensions](/opensubsonic/extension/)

### Additions

[List of additions](/opensubsonic/addition/)
