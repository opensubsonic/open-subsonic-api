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

There are four available authentication methods:

| Auth Method | Parameters | OpenS. | Example |
| ----------- | ---------- | ------ | ------- |
| API Key | `apiKey` | **Yes** | `?apiKey=7EF3C618-96A7-4121-A89B-C63629298729` |
| Token (MD5) | `u`, `t`, `s` | | `?u=joe&s=c19b2d&t=26719a1196d2a940705a59634eb18eab` |
| Hexadecimal | `u`, `p` | | `?u=joe&p=enc:736573616d65` |
| Plain | `u`, `p` | | `?u=joe&p=sesame` |

### Which auth methods to implement?

* **Clients:**
  * Clients **should** prefer to use [API Key authentication](../extensions/apikeyauth) when the server supports it.
    * Clients **must not** assume the server supports it. Clients **must** check [`getOpensubsonicExtensions`](../endpoints/getopensubsonicextensions) before prompting the user.
  * For best possible compatibility with servers, clients **should** implement all four methods.
    * If the server returns error code `41` or `42`, the client **should** retry with a different auth method. See [error handling](#error-handling).
  * When the server supports API Key auth, a client **may** suppress other auth methods.
  * When using API Key auth, a client **should not** prompt the user to enter a username. Use [`tokenInfo`](../endpoints/tokeninfo) for this, if needed.
  * Clients **should** use [HTTP form POST](../extensions/formpost) when the server supports it (see [risk model](#risk-model)).
  * When using an HTTP URL (not HTTPS), clients **should** warn the user about the relevant risks.

* **Servers:**
  * **API Key** is our current best recommended authentication method (for an explanation, see [risk model](#risk-model)). If you are developing a new server, start [here](#api-key).
  * For best possible compatibility with clients, servers **should** implement all four auth methods.
    * In the event that the server does not implement a requested auth method, the server **must** return error code `41` or `42` (depending on auth method). See [error handling](#error-handling).
  * Servers **may** accept the API Key instead of a password for all four auth methods.
  * An API Key **must** be randomly generated and **must not** be user-supplied. Servers **must not** accept a user-supplied password in the `apiKey` field. 
  * Servers **should** support the [HTTP form POST](../extensions/formpost) extension to reduce the risk of incidental credential leaks (see [risk model](#risk-model)).

### API Key

{{< alert color="warning" title="OpenSubsonic" >}}
API Key authentication is an OpenSubsonic extension, not part of the original Subsonic API. See [API Key authentication](../extensions/apikeyauth).
{{< /alert >}}

For servers that implement [API Key authentication](../extensions/apikeyauth), the recommended authentication is to use an API key.
This is randomly generated by the server, is unrelated to any password, and cannot be used to sign into the server except through the API.
It must be passed in in as `apiKey=<API key>`, and the `u` parameter **must not be provided**.
Note that `u`/`p` may still be used by servers which are backed by LDAP/PAM/other authentication.

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=joe&apiKey=43504ab81e2bfae1a7691fe3fc738fdf55ada2757e36f14bcf13d&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

### Token (MD5)

How to determine the `t` and `s` parameters for Token (MD5) authentication:

1. For each REST call, generate a random string called the _salt_. Send this as parameter `s`.
   Use a salt length of at least six characters.
2. Calculate the authentication token as follows: `token = md5(password + salt)`. The md5() function takes a string and returns the 32-byte ASCII hexadecimal representation of the MD5 hash, using lower case characters for the hex values. The '+' operator represents concatenation of the two strings. Treat the strings as UTF-8 encoded when calculating the hash. Send the result as parameter `t`.

For example: if the password is `sesame` and the random salt is `c19b2d`, then `token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab`. The corresponding request URL then becomes:

{{< alert color="primary" >}} `http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Risk model

OpenSubsonic inherits its original API from Subsonic, which has a long history (since 2009). It is necessary to balance modern security concerns with the need for compatibility with many years of client and server implementations:

* HTTPS is recommended in all cases; however, many users continue to run HTTP servers, either because their software stack does not support HTTPS, or TLS configuration is too difficult, or lack of awareness, or other reasons.
  * We cannot assume HTTPS, so we need to mitigate the harms of credential leaks or deliberate MITM attacks to the extent possible.
* Subsonic originally used `GET` parameters for everything, which made incidental credential leaks via web server logs, proxies, etc. highly likely.
* If a user's password is intercepted, there is a risk of compromising the user's other unrelated accounts, due to potential password reuse.
* MD5 is obsolete and broken, but because it has been part of the API for a long time, and was "recommended" until recently, many server and client implementations still use it, and we would lose compatibility by dropping it.
* Token (MD5) auth forces the server to perform the salt/hash calculation server-side on demand, which means the server must have access to the plain text of the password—either by storing it in plain text, or with reversible encryption, both of which are considered bad security practice in modern times.

[API Key authentication](../extensions/apikeyauth) was created to try to resolve as many of these issues as possible:

* API Keys are randomly generated, preventing password reuse, and providing resilience against brute-force attacks.
* API Keys do not depend on any particular hashing algorithm that could become obsolete in the future.
* An API Key should not be able to log into the server web UI. It should be limited to the API, so if it is compromised, the scope of risk is limited.
* An API Key should not be able to change the user's password, which prevents an attacker from "locking out" a user from their own account.
* If compromised, an API Key can be more easily reset, without the inconvenience of also needing to reset the user's primary sign in credentials.
* A user may have multiple clients, and each client can have its own API Key, which eases recovery in the event that any single key becomes compromised.

Ideally, all servers and clients should migrate to API Key authentication. The previous auth methods remain available for compatibility only.

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
