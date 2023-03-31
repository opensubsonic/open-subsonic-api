---
title: "AlbumID3"
linkTitle: "AlbumID3 [OS]"
opensubsonic:
- Extension
description: >
  An album from ID3 tags.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "ad0f112b6dcf83de5e9cae85d07f0d35",
  "name": "8-bit lagerfeuer",
  "artist": "pornophonique",
  "year": 2007,
  "coverArt": "al-ad0f112b6dcf83de5e9cae85d07f0d35_640a93a8",
  "starred": "2023-03-22T01:51:06Z",
  "duration": 1954,
  "playCount": 97,
  "created": "2023-03-10T02:19:35.784818075Z",
  "artistId": "91c3901ac465b9efc439e4be4270c2b6",
  "songCount": 8,
  "played": "2023-03-28T00:45:13Z",
  "userRating": 4
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id": "ad0f112b6dcf83de5e9cae85d07f0d35",
  "name": "8-bit lagerfeuer",
  "artist": "pornophonique",
  "year": 2007,
  "coverArt": "al-ad0f112b6dcf83de5e9cae85d07f0d35_640a93a8",
  "starred": "2023-03-22T01:51:06Z",
  "duration": 1954,
  "playCount": 97,
  "created": "2023-03-10T02:19:35.784818075Z",
  "artistId": "91c3901ac465b9efc439e4be4270c2b6",
  "songCount": 8
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | The id of the album |
| `name` | `string` | **Yes** |     | The album name. |
| `artist` | `string` | No |     | Artist name.  |
| `artistId` | `string` | No |    | The id of the artist |
| `coverArt` | `string` | No |     | A covertArt id.  |
| `songCount` | `int` | **Yes** |     | Number of songs |
| `duration` | `int` | **Yes** |     | Total duration of the album |
| `playCount` | `long` | No |     | Number of play of the album |
| `created` | `string` | **Yes** |     | Date the album was added. [ISO 8601]|
| `starred` | `string` | No |     | Date the album was starred. [ISO 8601]|
| `year` | `int` | No |     | The album year|
| `genre` | `string` | No |     | The album genre|
| `played` | `string` | No | **Yes**    | Date the album was last played. [ISO 8601]|
| `userRating` | `int` | No | **Yes**    | The user rating of the album. [1-5]|

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `played`
- `userRating`
{{< /alert >}}

---

### OpenSubsonic server support

| Server | Min vers. | Comment |
| --- | --- | --- |
| **Navidrome** |  | Support `played` and `userRating` |
