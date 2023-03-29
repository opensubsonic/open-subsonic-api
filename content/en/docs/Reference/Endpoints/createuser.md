---
title: "createUser"
linkTitle: "z getUcreateUsersers"
description: >
    Creates a new user on the server.
---

## TODO

`http://your-server/rest/createUser` Since [1.1.0](../subsonic-versions)

Creates a new user on the server, using the following parameters:

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the new user. |
| `password` | Yes |     | The password of the new user, either in clear text of hex-encoded (see above). |
| `email` | Yes |     | The email address of the new user. |
| `ldapAuthenticated` | No  | false | Whether the user is authenicated in LDAP. |
| `adminRole` | No  | false | Whether the user is administrator. |
| `settingsRole` | No  | true | Whether the user is allowed to change personal settings and password. |
| `streamRole` | No  | true | Whether the user is allowed to play files. |
| `jukeboxRole` | No  | false | Whether the user is allowed to play files in jukebox mode. |
| `downloadRole` | No  | false | Whether the user is allowed to download files. |
| `uploadRole` | No  | false | Whether the user is allowed to upload files. |
| `playlistRole` | No  | false | Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect. |
| `coverArtRole` | No  | false | Whether the user is allowed to change cover art and tags. |
| `commentRole` | No  | false | Whether the user is allowed to create and edit comments and ratings. |
| `podcastRole` | No  | false | Whether the user is allowed to administrate Podcasts. |
| `shareRole` | No  | false | (Since [1.8.0](../subsonic-versions)) Whether the user is allowed to share files with anyone. |
| `videoConversionRole` | No  | false | (Since [1.15.0](../subsonic-versions)) Whether the user is allowed to start video conversions. |
| `musicFolderId` | No  | All folders | (Since [1.12.0](../subsonic-versions)) IDs of the music folders the user is allowed access to. Include the parameter once for each folder. |

Returns an empty `<subsonic-response>` element on success.

