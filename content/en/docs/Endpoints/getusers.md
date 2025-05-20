---
title: "getUsers"
linkTitle: "getUsers"
categories:
- User management
description: >
    Get details about all users, including which authorization roles and folder access they have
---

`http://your-server/rest/getUsers` Since [1.8.0](../../subsonic-versions)

Get details about all users, including which authorization roles and folder access they have. Only users with admin privileges are allowed to call this method.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getUsers.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`users`](../../responses/users) element on success.

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
    "users": {
      "user": [
        {
          "folder": [
              1,
              3
          ],
          "username": "sindre",
          "email": "sindre@activeobjects.no",
          "scrobblingEnabled": "true",
          "adminRole": "false",
          "settingsRole": "true",
          "downloadRole": "true",
          "uploadRole": "false",
          "playlistRole": "true",
          "coverArtRole": "true",
          "commentRole": "true",
          "podcastRole": "true",
          "streamRole": "true",
          "jukeboxRole": "true",
          "shareRole": "false"
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
    "users": {
      "user": [
        {
          "folder": [
              1,
              3
          ],
          "username": "sindre",
          "email": "sindre@activeobjects.no",
          "scrobblingEnabled": "true",
          "adminRole": "false",
          "settingsRole": "true",
          "downloadRole": "true",
          "uploadRole": "false",
          "playlistRole": "true",
          "coverArtRole": "true",
          "commentRole": "true",
          "podcastRole": "true",
          "streamRole": "true",
          "jukeboxRole": "true",
          "shareRole": "false"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}


| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `users` | [`users`](../../responses/users) | **Yes** |     | The users |
