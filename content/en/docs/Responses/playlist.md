---
title: "playlist"
linkTitle: "playlist [OS]"
opensubsonic:
- Change
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
  "duration": 304,
  "readonly": true,
  "validUntil": "2023-03-23T03:18:41+00:00"
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
| `readonly` | `boolean` | No | **Yes** | If true the playlist cannot be edited by the current user |
| `validUntil` | `string` | No | **Yes** | Date the playlist contents are considered valid until [ISO 8601] |

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `readonly`
- `validUntil`

**Note**: All OpenSubsonic added fields are **optional**. But if a server supports a field it **must** return it with an empty / default value when not present in its database so that clients know what the server supports.

When `readonly` is true, clients should hide or disable UI actions that modify the playlist. This is useful for server-generated playlists like smart playlists, recommendations, or curated system lists. The value should reflect the current authenticated user's access level. When omitted, clients should assume the playlist is editable (`false`).

The `validUntil` field indicates how long the playlist contents can be treated as fresh, inspired by HTTP caching semantics. Clients may use this to determine when to refresh the playlist data. An empty or absent value indicates no caching guarantee; clients should refresh the playlist data on each access.
{{< /alert >}}
