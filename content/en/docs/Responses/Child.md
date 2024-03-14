---
title: "Child"
linkTitle: "Child [OS]"
opensubsonic:
- Change
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
    "codec": "flac",
    "bitDepth": 16,
    "samplingRate": 44100,
    "path": "The New Deal/Live at The Casbah - 2005-04-29/04 - \"polar expedition\".flac",
    "playCount": 8,
    "played": "2023-03-26T22:27:46Z",
    "discNumber": 1,
    "created": "2023-03-14T17:51:22.112827504Z",
    "albumId": "e8a0685e3f3ec6f251649af2b58b8617",
    "artistId": "97e0398acf63f9fb930d7d4ce209a52b",
    "type": "music",
    "mediaType": "song",
    "isVideo": false,
    "bpm": 134,
    "comment": "This is a song comment",
    "sortName": "Polar expedition",
    "musicBrainzId": "189002e7-3285-4e2e-92a3-7f6c30d407a2",
    "genres": [
        {
            "name": "Hip-Hop"
        },
        {
            "name": "East coast"
        }
    ],
    "artists": [
        {
            "id": "ar-1",
            "name": "Artist 1"
        },
        {
            "id": "ar-2",
            "name": "Artist 2"
        }
    ],
    "displayArtist": "Artist 1 feat. Artist 2",
    "albumArtists": [
        {
            "id": "ar-6",
            "name": "Artist 6"
        },
        {
            "id": "ar-7",
            "name": "Artist 7"
        }
    ],
    "displayAlbumArtist": "Artist 6 & Artist 7",
    "contributors": [
        {
            "role": "composer",
            "artist": {
                "id": "ar-3",
                "name": "Artist 3"
            }
        },
        {
            "role": "composer",
            "artist": {
                "id": "ar-4",
                "name": "Artist 4"
            }
        },
        {
            "role": "lyricist",
            "artist": {
                "id": "ar-5",
                "name": "Artist 5"
            }
        },
        {
            "role": "performer",
            "subRole": "Bass",
            "artist": {
                "id": "ar-5",
                "name": "Artist 5"
            }
        }
    ],
    "displayComposer": "Artist 3, Artist 4",
    "moods": [
        "slow",
        "cool"
    ],
    "replayGain": {
        "trackGain": 0.1,
        "albumGain": 1.1,
        "trackPeak": 9.2,
        "albumPeak": 9,
        "baseGain": 0
    }
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
  "codec": "flac",
  "bitDepth": 16,
  "samplingRate": 44100,
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
| `title` | `string` | **Yes** |     | The media name. |
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
| `codec` | `string` | No |     | The codec of the media. |
| `bitDepth` | `int` | No |     | The bit depth of the media. |
| `samplingRate` | `int` | No |     | The sampling rate of the media. |
| `path` | `string` | No |     | The full path of the media. |
| `isVideo` | `boolean` | No |     | Media is a video |
| `userRating` | `int` | No |     | The user rating of the media [1-5] |
| `averageRating` | `number` | No |     | The average rating of the media [1.0-5.0] |
| `playCount` | `long` | No |     | The play count. |
| `discNumber` | `int` | No |     | The disc number. |
| `created` | `string` | No |     | Date the media was created. [ISO 8601] |
| `starred` | `string` | No |     | Date the media was starred. [ISO 8601] |
| `albumId` | `string` | No |     | The corresponding album id |
| `artistId` | `string` | No |     | The corresponding artist id |
| `type` | `string` | No |     | The generic type of media [music/podcast/audiobook/video]|
| `mediaType` | `string` | No | **Yes** | The actual media type [song/album/artist] **Note**: If you support `musicBrainzId` you must support this field to ensure clients knows what the ID refers to. |
| `bookmarkPosition` | `long` | No |     | The bookmark position in seconds |
| `originalWidth` | `int` | No |     | The video original Width |
| `originalHeight` | `int` | No |     | The video original Height |
| `played` | `string` | No | **Yes**    | Date the album was last played. [ISO 8601]|
| `bpm` | `int` | No |   **Yes**   | The BPM of the song. |
| `comment` | `string` | No |  **Yes**    | The comment tag of the song. |
| `sortName` | `string` | No |  **Yes**   | The song sort name. |
| `musicBrainzId` | `string` | No |  **Yes**   | The track MusicBrainzID. |
| `genres` | Array of [`ItemGenre`](../itemgenre) | No | **Yes**    | The list of all genres of the song. |
| `artists` | Array of [`ArtistID3`](../artistid3) | No | **Yes**    | The list of all song artists of the song. (Note: Only the required [`ArtistID3`](../artistid3) fields should be returned by default)|
| `displayArtist` | `string` | No |  **Yes**   | The single value display artist. |
| `albumArtists` | Array of [`ArtistID3`](../artistid3) | No | **Yes**    | The list of all album artists of the song. (Note: Only the required [`ArtistID3`](../artistid3) fields should be returned by default)|
| `displayAlbumArtist` | `string` | No |  **Yes**   | The single value display album artist. |
| `contributors` | Array of [`Contributor`](../contributor) | No | **Yes**    | The list of all contributor artists of the song. |
| `displayComposer` | `string` | No |  **Yes**   | The single value display composer. |
| `moods` | Array of `string` | No | **Yes**    | The list of all moods of the song. |
| `replayGain` | [`ReplayGain`](../replaygain) | No | **Yes**    | The replaygain data of the song. |

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `played`
- `bpm`
- `comment`
- `sortName`
- `musicBrainzId`
- `genres`
- `artists`
- `displayArtist`
- `albumArtists`
- `displayAlbumArtist`
- `contributors`
- `displayComposer`
- `moods`
- `replayGain`

**Note**: All OpenSubsonic added fields are **optionals**. But if a server support a field it **must** return it with an empty / default value when not present in it's database so that clients knows what the server supports.

**Note**: Even if some added fields may looks duplicated, it's important to still return the legacy data for compatibility reasons.
{{< /alert >}}

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| --- | --- | --- |
| **Navidrome** | 0.49.0 | Support `played`|
{{< /alert >}}
