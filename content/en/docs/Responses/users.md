---
title: "users"
linkTitle: "users"
description: >
  users.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "user": [
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
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "user": [
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
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field  | Type                       | Req. | OpenS. | Details        |
| ------ | -------------------------- | ---- | ------ | -------------- |
| `user` | Array of [`user`](../user) | No   |        | Array of users |
