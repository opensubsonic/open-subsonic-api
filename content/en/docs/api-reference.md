---
title: "API Reference"
linkTitle: "API Reference [OS]"
opensubsonic:
  - Clarification
  - Change
weight: 6
description: >
  Common API documentation.
---

## Parameters

Please note that all methods take the following parameters:

| Parameter | Req.        | OpenS. | Default | Comment                                                                                                                                                                                                                                                            |
| --------- | ----------- | ------ | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `u`       | **Yes**\*\* |        |         | The username.                                                                                                                                                                                                                                                      |
| `p`       | **Yes**\*   |        |         | The password, either in clear text or hex-encoded with a "enc:" prefix. Since [1.13.0](../subsonic-versions) this should only be used for testing purposes.                                                                                                        |
| `t`       | **Yes**\*   |        |         | (Since [1.13.0](../subsonic-versions)) The authentication token computed as **md5(password + salt)**. See below for details.                                                                                                                                       |
| `s`       | **Yes**\*   |        |         | (Since [1.13.0](../subsonic-versions)) A random string ("salt") used as input for computing the password hash. See below for details.                                                                                                                              |
| `apiKey`  | **Yes**\*\* |**Yes** |         | [OS] An API key used for authentication                                                                                                                                                                                                                            |
| `v`       | **Yes**     |        |         | The protocol version implemented by the client, i.e., the version of the [subsonic-rest-api.xsd](../subsonic-versions) schema used (see below).                                                                                                                    |
| `c`       | **Yes**     |        |         | A unique string identifying the client application.                                                                                                                                                                                                                |
| `f`       |   No        |        | xml     | Request data to be returned in this format. Supported values are "xml", "json" (since [1.4.0](../subsonic-versions)) and "jsonp" (since [1.6.0](../subsonic-versions)). If using jsonp, specify name of javascript callback function using a `callback` parameter. |

\*) Either `p` or both `t` and `s` must be specified.

\*\*) If `apiKey` is specified, then none of `p`, `t`, `s`, nor `u` can be specified.

Remember to [URL encode](http://www.w3schools.com/tags/ref_urlencode.asp) the request parameters. All methods (except those that return binary data) returns XML documents conforming to the [subsonic-rest-api.xsd](../subsonic-versions) schema. The XML documents are encoded with UTF-8.

## POST support

OpenSubsonic add official support for `application/x-www-form-urlencoded` POST to pass the argument.

Check that the server support the [HTTP form POST](../extensions/formpost) extension before using it.

The arguments can then be passed in the POST body (Do not forget to URL encode both the keys and values), this allows to overcome the URL size limits when passing many parameters for playlists for example.

{{< alert color="primary" >}} `curl -v -X POST -H 'Content-Type: application/x-www-form-urlencoded' 'http://your-server/rest/ping.view' --data 'c=AwesomeClientName&v=1.12.0&f=json&u=joe&p=sesame'` {{< /alert >}}

## Authentication

If you are targeting API version [1.12.0](../subsonic-versions) or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=AwesomeClientName&f=json` {{< /alert >}}

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=AwesomeClientName&f=json` {{< /alert >}}

Starting with API version [1.13.0](../subsonic-versions), the recommended authentication scheme is to send an authentication token, calculated as a _one-way salted hash_ of the password.

This involves two steps:

1. For each REST call, generate a random string called the _salt_. Send this as parameter `s`.
   Use a salt length of at least six characters.
2. Calculate the authentication token as follows: **token = md5(password + salt)**. The md5() function takes a string and returns the 32-byte ASCII hexadecimal representation of the MD5 hash, using lower case characters for the hex values. The '+' operator represents concatenation of the two strings. Treat the strings as UTF-8 encoded when calculating the hash. Send the result as parameter `t`.

For example: if the password is **sesame** and the random salt is **c19b2d**, then **token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab**. The corresponding request URL then becomes:

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

{{< alert color="warning" title="OpenSubsonic" >}}
A new authentication mechanism is available.

See [API Key authentication](../extensions/apikeyauth)
{{< /alert >}}

For servers that implement [API Key authentication](../extensions/apikeyauth), the recommended authentication is to use an API key.
This is a token generated from the Subsonic server.
It must be passed in in as `apiKey=<API key>`, and the `u` parameter **must not be provided**.
Note that `u`/`p` may still be used by servers which are backed by LDAP/PAM/other authentication.

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=joe&apiKey=43504ab81e2bfae1a7691fe3fc738fdf55ada2757e36f14bcf13d&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

## Subsonic-response

All API endpoint unless noted otherwise returns a [`subsonic-response`](../responses/subsonic-response) that indicate the result of the command and give some information about the server.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1"
  }
}
{{< /tab >}}
{{< /tabpane >}}

See: [`subsonic-response`](../responses/subsonic-response) for the field details.

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

See [`subsonic-response`](../responses/subsonic-response)
{{< /alert >}}

## Error handling

If a method fails it will return an error code and message in an `error` element. In addition, the `status` attribute of the `subsonic-response` root element will be set to `failed` instead of `ok`. For example:

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "failed",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "error": {
      "code": 40,
      "message": "Wrong username or password"
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "failed",
    "version": "1.16.1",
    "error": {
      "code": 40,
      "message": "Wrong username or password"
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field     | Type                          | Req.    | OpenS. | Details                          |
| --------- | ----------------------------- | ------- | ------ | -------------------------------- |
| `error`   | [`error`](../responses/error) | **Yes** |        | The error details.               |
| `code`    | `int`                         | **Yes** |        | The error code.                  |
| `message` | `string`                      |   No    |        | A human readable error message. |

The following error codes are defined:

| Code | Description                                                                                                           |
| ---- | --------------------------------------------------------------------------------------------------------------------- |
| 0    | A generic error.                                                                                                      |
| 10   | Required parameter is missing.                                                                                        |
| 20   | Incompatible Subsonic REST protocol version. Client must upgrade.                                                     |
| 30   | Incompatible Subsonic REST protocol version. Server must upgrade.                                                     |
| 40   | Wrong username or password.                                                                                           |
| 41   | Token authentication not supported for LDAP users.                                                                    |
| 42   | Provided authentication mechanism not supported.                                                                      |
| 43   | Multiple conflicting authentication mechanisms provided.                                                              |
| 44   | Invalid API key.                                                                                                      |
| 50   | User is not authorized for the given operation.                                                                       |
| 60   | The trial period for the Subsonic server is over. Please upgrade to Subsonic Premium. Visit subsonic.org for details. |
| 70   | The requested data was not found.                                                                                     |


{{< alert color="warning" title="OpenSubsonic" >}}
Servers **must** return error `41` if they do not support token-based authentication, `42` if they do not support any other authentication mechanism (password-based and/or API key-based), and `43` if multiple conflicting authentication parameters are passed in at the same time.

Note that even though the error text for `41` is `Token authentication not supported for LDAP users.`, it actually implies that Token authentication is not supported for _any_ reason.

To indicate differences between cases (where LDAP is used, versus no LDAP), servers may use the new `helpUrl` field.
New fields are added, see [`error`](../responses/error)
{{< /alert >}}
