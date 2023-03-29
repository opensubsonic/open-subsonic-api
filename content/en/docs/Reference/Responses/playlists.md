---
title: "playlists"
linkTitle: "playlists"
description: >
  Playlists.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}{
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}{
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
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | Id of the playlist |
| `name` | `string` | **Yes** |     | Name of the playlist |
| `comment` | `string` | No|     | A commnet |
| `owner` | `string` | No |     | Owner of the playlist |
| `public` | `boolean` | No|     | Is the playlist public |
| `songCount` | `int` | **Yes** |     | number of songs |
| `duration` | `int` | **Yes** |     | Playlist duration in seconds |
| `created` | `string` | **Yes** |     | Creation date [ISO 8601] |
| `changed` | `string` | **Yes** |     | Last changed date [ISO 8601] |
| `coverArt` | `string` | No |     | A cover Art Id |
| `allowedUser` | Array of `string` | No |     | A list of allowed usernames |
