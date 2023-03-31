---
title: "Child"
linkTitle: "Child [OS]"
opensubsonic:
- Extension
description: >
  A media.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "082f435a363c32c57d5edb6a678a28d4",
  "parent": "e8a0685e3f3ec6f251649af2b58b8617",
  "isDir": false,
  "title": "\"polar expedition\"",
  "album": "Live at The Casbah - 2005-04-29",
  "artist": "The New Deal",
  "track": 4,
  "year": 2005,
  "coverArt": "mf-082f435a363c32c57d5edb6a678a28d4_6410b3ce",
  "size": 19866778,
  "contentType": "audio/flac",
  "suffix": "flac",
  "starred": "2023-03-27T09:45:27Z",
  "duration": 178,
  "bitRate": 880,
  "path": "The New Deal/Live at The Casbah - 2005-04-29/04 - \"polar expedition\".flac",
  "playCount": 8,
  "played": "2023-03-26T22:27:46Z",
  "discNumber": 1,
  "created": "2023-03-14T17:51:22.112827504Z",
  "albumId": "e8a0685e3f3ec6f251649af2b58b8617",
  "artistId": "97e0398acf63f9fb930d7d4ce209a52b",
  "type": "music",
  "isVideo": false
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id": "082f435a363c32c57d5edb6a678a28d4",
  "parent": "e8a0685e3f3ec6f251649af2b58b8617",
  "isDir": false,
  "title": "\"polar expedition\"",
  "album": "Live at The Casbah - 2005-04-29",
  "artist": "The New Deal",
  "track": 4,
  "year": 2005,
  "coverArt": "mf-082f435a363c32c57d5edb6a678a28d4_6410b3ce",
  "size": 19866778,
  "contentType": "audio/flac",
  "suffix": "flac",
  "starred": "2023-03-27T09:45:27Z",
  "duration": 178,
  "bitRate": 880,
  "path": "The New Deal/Live at The Casbah - 2005-04-29/04 - \"polar expedition\".flac",
  "playCount": 8,
  "discNumber": 1,
  "created": "2023-03-14T17:51:22.112827504Z",
  "albumId": "e8a0685e3f3ec6f251649af2b58b8617",
  "artistId": "97e0398acf63f9fb930d7d4ce209a52b",
  "type": "music",
  "isVideo": false
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `id` | `string` | **Yes** |     | The id of the media |
| `parent` | `string` | No |     | The id of the parent (folder/album) |
| `isDir` | `boolean` | **Yes** |     | The media is a directory |
| `title` | `string` | **Yes** |     | The medua name. |
| `album` | `string` | No |     | The album name. |
| `artist` | `string` | No |     | The artist name.  |
| `track` | `int` | No |    | The track number. |
| `year` | `int` | No |     | The media year. |
| `genre` | `string` | No |     | The media genre|
| `coverArt` | `string` | No |     | A covertArt id.  |
| `size` | `long` | No |     | A file size of the media.  |
| `contentType` | `string` | No |     | The mimeType of the media.  |
| `suffix` | `string` | No |     | The file suffix of the media.  |
| `transcodedContentType` | `string` | No |     | The transcoded mediaType if transcoding should happen. |
| `transcodedSuffix` | `string` | No |     | The file suffix of the transcoded media.  |
| `duration` | `int` | No |     | The duration of the media in seconds. |
| `bitRate` | `int` | No |     | The bitrate of the media. |
| `path` | `string` | No |     | The full path of the media. |
| `isVideo` | `boolean` | No |     | Media is a video |
| `userRating` | `int` | No |     | The user rating of the media [1-5] |
| `averageRating` | `double` | No |     | The average rating of the media [1.0-5.0] |
| `playCount` | `long` | No |     | The play count. |
| `discNumber` | `int` | No |     | The disc number. |
| `created` | `string` | No |     | Date the media was created. [ISO 8601] |
| `starred` | `string` | No |     | Date the media was starred. [ISO 8601] |
| `albumId` | `string` | No |     | The corresponding album id |
| `artistId` | `string` | No |     | The corresponding artist id |
| `type` | `string` | No |     | The media type [music/podcast/audiobook/video]|
| `bookmarkPosition` | `long` | No |     | The bookmark position in seconds |
| `originalWidth` | `int` | No |     | The video original Width |
| `originalHeight` | `int` | No |     | The video original Height |
| `played` | `string` | No | **Yes**    | Date the album was last played. [ISO 8601]|

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `played`
{{< /alert >}}

---

### OpenSubsonic server support

| Server | Min vers. | Comment |
| --- | --- | --- |
| **Navidrome** | 0.49.0 | Support `played`|
