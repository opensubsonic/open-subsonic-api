---
title: "user"
linkTitle: "user"
description: >
  user.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "folder": [
    "1",
    "3"
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "folder": [
    "1",
    "3"
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
{{< /tab >}}
{{< /tabpane >}}

| Field                 | Type           | Req.    | OpenS. | Details                                      |
| --------------------- | -------------- | ------- | ------ | -------------------------------------------- |
| `username`            | `string`       | **Yes** |        | Username                                     |
| `scrobblingEnabled`   | `boolean`      | **Yes** |        | Whether scrobling is enabled for the user    |
| `maxBitRate`          | `int`          | No      |        |                                              |
| `adminRole`           | `boolean`      | **Yes** |        | Whether the user is an admin                 |
| `settingsRole`        | `boolean`      | **Yes** |        | Whether the user is can edit settings        |
| `downloadRole`        | `boolean`      | **Yes** |        | Whether the user can download                |
| `uploadRole`          | `boolean`      | **Yes** |        | Whether the user can upload                  |
| `playlistRole`        | `boolean`      | **Yes** |        | Whether the user can create playlists        |
| `coverArtRole`        | `boolean`      | **Yes** |        | Whether the user can get cover art           |
| `commentRole`         | `boolean`      | **Yes** |        | Whether the user can create comments         |
| `podcastRole`         | `boolean`      | **Yes** |        | Whether the user can create/refresh podcasts |
| `streamRole`          | `boolean`      | **Yes** |        | Whether the user can stream                  |
| `jukeboxRole`         | `boolean`      | **Yes** |        | Whether the user can control the jukebox     |
| `shareRole`           | `boolean`      | **Yes** |        | Whether the user can create a stream         |
| `videoConversionRole` | `boolean`      | **Yes** |        | Whether the user can convert videos          |
| `avatarLastChanged`   | `string`       | No      |        | Last time the avatar was changed [ISO 8601]  |
| `folder`              | Array of `int` | No      |        | Folder ID(s)                                 |
