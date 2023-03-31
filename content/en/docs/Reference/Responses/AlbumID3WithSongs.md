---
title: "AlbumID3WithSongs"
linkTitle: "AlbumID3WithSongs [OS]"
opensubsonic:
- Extension
description: >
  Album with songs.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "200000021",
  "parent": "100000036",
  "album": "Forget and Remember",
  "title": "Forget and Remember",
  "name": "Forget and Remember",
  "isDir": true,
  "coverArt": "al-200000021",
  "songCount": 20,
  "created": "2021-07-22T02:09:31+00:00",
  "duration": 4248,
  "playCount": 0,
  "artistId": "100000036",
  "artist": "Comfort Fit",
  "year": 2005,
  "genre": "Hip-Hop",
  "song": [
    {
      "id": "300000116",
      "parent": "200000021",
      "title": "Can I Help U?",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "300000116",
      "duration": 103,
      "bitRate": 216,
      "track": 1,
      "year": 2005,
      "genre": "Hip-Hop",
      "size": 2811819,
      "discNumber": 1,
      "suffix": "mp3",
      "contentType": "audio/mpeg",
      "path": "user/Comfort Fit/Forget And Remember/1 - Can I Help U?.mp3"
    },
    {
      "id": "300000121",
      "parent": "200000021",
      "title": "Planetary Picknick",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "300000121",
      "duration": 358,
      "bitRate": 238,
      "track": 2,
      "year": 2005,
      "genre": "Hip-Hop",
      "size": 10715592,
      "discNumber": 1,
      "suffix": "mp3",
      "contentType": "audio/mpeg",
      "path": "user/Comfort Fit/Forget And Remember/2 - Planetary Picknick.mp3"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id": "200000021",
  "parent": "100000036",
  "album": "Forget and Remember",
  "title": "Forget and Remember",
  "name": "Forget and Remember",
  "isDir": true,
  "coverArt": "al-200000021",
  "songCount": 20,
  "created": "2021-07-22T02:09:31+00:00",
  "duration": 4248,
  "playCount": 0,
  "artistId": "100000036",
  "artist": "Comfort Fit",
  "year": 2005,
  "genre": "Hip-Hop",
  "song": [
    {
      "id": "300000116",
      "parent": "200000021",
      "title": "Can I Help U?",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "300000116",
      "duration": 103,
      "bitRate": 216,
      "track": 1,
      "year": 2005,
      "genre": "Hip-Hop",
      "size": 2811819,
      "discNumber": 1,
      "suffix": "mp3",
      "contentType": "audio/mpeg",
      "path": "user/Comfort Fit/Forget And Remember/1 - Can I Help U?.mp3"
    },
    {
      "id": "300000121",
      "parent": "200000021",
      "title": "Planetary Picknick",
      "isDir": false,
      "isVideo": false,
      "type": "music",
      "albumId": "200000021",
      "album": "Forget and Remember",
      "artistId": "100000036",
      "artist": "Comfort Fit",
      "coverArt": "300000121",
      "duration": 358,
      "bitRate": 238,
      "track": 2,
      "year": 2005,
      "genre": "Hip-Hop",
      "size": 10715592,
      "discNumber": 1,
      "suffix": "mp3",
      "contentType": "audio/mpeg",
      "path": "user/Comfort Fit/Forget And Remember/2 - Planetary Picknick.mp3"
    }
  ]
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
| `song` | Array of [`Child`](../child) | No |     | The list of songs |

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `played`
- `userRating`
{{< /alert >}}
