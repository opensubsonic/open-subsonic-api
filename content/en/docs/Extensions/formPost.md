---
title: "HTTP form POST"
linkTitle: "HTTP form POST"
OpenSubsonic:
  - Extension
description: >
  Add support for POST request to the API (application/x-www-form-urlencoded).
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `formPost` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

## Version 1

This extension requires that the server support passing API arguments via POST with the arguments respecting the `application/x-www-form-urlencoded` format.

See: [API reference](../../api-reference)

{{< alert color="warning" >}}
`application/x-www-form-urlencoded`: the keys and values are encoded in key-value tuples separated by '&', with a '=' between the key and the value. Non-alphanumeric characters in both keys and values are [URL encoded](https://en.wikipedia.org/wiki/Percent-encoding).
{{< /alert >}}
