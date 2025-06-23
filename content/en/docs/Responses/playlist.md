---
title: "playlist"
linkTitle: "playlist"
description: >
  Playlist.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "800000075",
  "name": "testcreate",
  "owner": "user",
  "public": true,
  "created": "2023-03-16T03:18:41+00:00",
  "changed": "2023-03-16T03:18:41+00:00",
  "songCount": 1,
  "duration": 304
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id": "800000075",
  "name": "testcreate",
  "owner": "user",
  "public": true,
  "created": "2023-03-16T03:18:41+00:00",
  "changed": "2023-03-16T03:18:41+00:00",
  "songCount": 1,
  "duration": 304
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
