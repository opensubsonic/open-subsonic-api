---
title: "getPlaylists"
linkTitle: "getPlaylists"
categories:
- Playlists
description: >
  Returns all playlists a user is allowed to play.
---

`http://your-server/rest/getPlaylists` Since [1.0.0](../../subsonic-versions)

Returns all playlists a user is allowed to play.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | **no**  |  |  | (Since [1.8.0](../../subsonic-versions)) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getPlaylists.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`playlists`](../../responses/playlists) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "playlists": {
      "playlist": [
        {
          "id": "800000003",
          "name": "random - admin - private (admin)",
          "owner": "admin",
          "public": false,
          "created": "2021-02-23T04:35:38+00:00",
          "changed": "2021-02-23T04:35:38+00:00",
          "songCount": 43,
          "duration": 17875
        },
        {
          "id": "800000002",
          "name": "random - admin - public (admin)",
          "owner": "admin",
          "public": true,
          "created": "2021-02-23T04:34:56+00:00",
          "changed": "2021-02-23T04:34:56+00:00",
          "songCount": 43,
          "duration": 17786
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "playlists": {
      "playlist": [
        {
          "id": "800000003",
          "name": "random - admin - private (admin)",
          "owner": "admin",
          "public": false,
          "created": "2021-02-23T04:35:38+00:00",
          "changed": "2021-02-23T04:35:38+00:00",
          "songCount": 43,
          "duration": 17875
        },
        {
          "id": "800000002",
          "name": "random - admin - public (admin)",
          "owner": "admin",
          "public": true,
          "created": "2021-02-23T04:34:56+00:00",
          "changed": "2021-02-23T04:34:56+00:00",
          "songCount": 43,
          "duration": 17786
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `playlists` | [`playlists`](../../responses/playlists) | **Yes** |   | The playlists |
