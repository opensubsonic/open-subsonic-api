---
title: "OpenSubsonic changes"
linkTitle: "OpenSubsonic changes"
weight: 7
description: >
 API changes in OpenSubsonic API vs the original Subsonic API.
---

## Documentation

In the documentation all changes from the original Subsonic API will be emphasized with the following warning:

{{< alert color="warning" title="OpenSubsonic" >}}
Changes (Required or optional) related to OpenSubsonic.
{{< /alert >}}

All endpoints or responses modified by the OpenSubsonic API will have **[OS]** indicator in the navigation menu.

Most servers and clients have dedicated pages to show what parts of OpenSubsonic they support. See [Overview](../)

OpenSubsonic expand the original API via 3 different ways:

- **Clarifications**: Documentation improvement to ensure consistency in server answers or actions where doubt was possible.
- **Extensions**: Non breaking changes to the API to improve clients life. Like new returned field, or new parameters to existing functions.
- **Additions**: New endpoints added to provide functions that could not be provided via non breaking extensions.

## Required changes

OpenSubsonic is built to be mostly optional to ease the burden on the servers who can't support some features, while still allowing clients to precisely know what the servers support without having to guess.

To achieve this servers supporting OpenSubsonic have to support a very minimal subset of things.

1. Expand the [`subsonic-response`](../responses/subsonic-response) with the new mandatory fields.
2. Implement the [`getOpenSubsonicExtensions`](../endpoints/getopensubsonicextensions) endpoint. This **must** be accessible without any authentication parameters
3. Return error **41** ([`API Reference`](../api-reference#error-handling)) if they do not support Subsonic [1.13.0](../subsonic-versions) new authentification system while advertising a version > [1.13.0](../subsonic-versions)

## List of changes

### Clarifications

[List of clarifications](/opensubsonic/clarification/)

### Non breaking changes

[List of non breaking changes](/opensubsonic/change/)

### Additions

[List of additions](/opensubsonic/addition/)

### Extensions

[List of extension](/opensubsonic/extension/)
