---
title: "updateUser"
linkTitle: "z updateUser"
description: >
    Modifies an existing user on the server.
---

## TODO

`http://your-server/rest/updateUser` Since [1.10.1](../subsonic-versions)

Modifies an existing user on the server, using the following parameters:

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the user. |
| `password` | No  |     | The password of the user, either in clear text of hex-encoded (see above). |
| `email` | No  |     | The email address of the user. |
| `ldapAuthenticated` | No  |     | Whether the user is authenicated in LDAP. |
| `adminRole` | No  |     | Whether the user is administrator. |
| `settingsRole` | No  |     | Whether the user is allowed to change personal settings and password. |
| `streamRole` | No  |     | Whether the user is allowed to play files. |
| `jukeboxRole` | No  |     | Whether the user is allowed to play files in jukebox mode. |
| `downloadRole` | No  |     | Whether the user is allowed to download files. |
| `uploadRole` | No  |     | Whether the user is allowed to upload files. |
| `coverArtRole` | No  |     | Whether the user is allowed to change cover art and tags. |
| `commentRole` | No  |     | Whether the user is allowed to create and edit comments and ratings. |
| `podcastRole` | No  |     | Whether the user is allowed to administrate Podcasts. |
| `shareRole` | No  |     | Whether the user is allowed to share files with anyone. |
| `videoConversionRole` | No  | false | (Since [1.15.0](../subsonic-versions)) Whether the user is allowed to start video conversions. |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) IDs of the music folders the user is allowed access to. Include the parameter once for each folder. |
| `maxBitRate` | No  |     | (Since [1.13.0](../subsonic-versions)) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320. |

Returns an empty `<subsonic-response>` element on success.
