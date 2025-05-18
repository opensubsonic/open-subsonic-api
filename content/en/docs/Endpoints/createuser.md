---
title: "createUser"
linkTitle: "createUser"
categories:
- User management
description: >
    Creates a new user on the server.
---

`http://your-server/rest/createUser` Since [1.1.0](../../subsonic-versions)

Creates a new user on the server, using the following parameters:

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `username` | **Yes** |  |   | The name of the new user. |
| `password` | **Yes** |  |   | The password of the new user, either in clear text of hex-encoded (see above). |
| `email` | **Yes** |   |  | The email address of the new user. |
| `ldapAuthenticated` | No  || false | Whether the user is authenicated in LDAP. |
| `adminRole` | No  | |false | Whether the user is administrator. |
| `settingsRole` | No  | |true | Whether the user is allowed to change personal settings and password. |
| `streamRole` | No  || true | Whether the user is allowed to play files. |
| `jukeboxRole` | No  | |false | Whether the user is allowed to play files in jukebox mode. |
| `downloadRole` | No  || false | Whether the user is allowed to download files. |
| `uploadRole` | No  | |false | Whether the user is allowed to upload files. |
| `playlistRole` | No  || false | Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect. |
| `coverArtRole` | No  | |false | Whether the user is allowed to change cover art and tags. |
| `commentRole` | No  || false | Whether the user is allowed to create and edit comments and ratings. |
| `podcastRole` | No  | |false | Whether the user is allowed to administrate Podcasts. |
| `shareRole` | No  | |false | (Since [1.8.0](../../subsonic-versions)) Whether the user is allowed to share files with anyone. |
| `videoConversionRole` | No  | |false | (Since [1.15.0](../../subsonic-versions)) Whether the user is allowed to start video conversions. |
| `musicFolderId` | No  || All folders | (Since [1.12.0](../../subsonic-versions)) IDs of the music folders the user is allowed access to. Include the parameter once for each folder. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/createUser.view?username=test&password=test&email=test@test.com&name=radio&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

An empty [`subsonic-response`](../../responses/subsonic-response) element on success.

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
