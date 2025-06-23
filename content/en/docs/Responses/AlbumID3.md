---
title: "AlbumID3"
linkTitle: "AlbumID3 [OS]"
opensubsonic:
- Change
description: >
  An album from ID3 tags.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
    "id": "ad0f112b6dcf83de5e9cae85d07f0d35",
    "name": "8-bit lagerfeuer",
    "version": "Deluxe Edition",
    "artist": "pornophonique",
    "year": 2007,
    "coverArt": "al-ad0f112b6dcf83de5e9cae85d07f0d35_640a93a8",
    "starred": "2023-03-22T01:51:06Z",
    "duration": 1954,
    "playCount": 97,
    "genre": "Hip-Hop",
    "created": "2023-03-10T02:19:35.784818075Z",
    "artistId": "91c3901ac465b9efc439e4be4270c2b6",
    "songCount": 8,
    "played": "2023-03-28T00:45:13Z",
    "userRating": 4,
    "recordLabels": [
        {
            "name": "Sony"
        }
    ],
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
    "releaseTypes": [
        "Album",
        "Remixes"
    ],
    "moods": [
        "slow",
        "cool"
    ],
    "sortName": "lagerfeuer (8-bit)",
    "originalReleaseDate": {
        "year": 2001,
        "month": 3,
        "day": 10
    },
    "releaseDate": {
        "year": 2001,
        "month": 3,
        "day": 10
    },
    "isCompilation": false,
    "explicitStatus": "explicit",
    "discTitles": [
        {
            "disc": 0,
            "title": "Disc 0 title"
        },
        {
            "disc": 2,
            "title": "Disc 1 title"
        }
    ]
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
  "genre": "Hip-Hop",
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
| `version` | `string` | No | **Yes** | The album version name (Remastered, Anniversary Box Set, ...). |
| `artist` | `string` | No |     | Artist name.  |
| `artistId` | `string` | No |    | The id of the artist |
| `coverArt` | `string` | No |     | A covertArt id.  |
| `songCount` | `int` | **Yes** |     | Number of songs |
| `duration` | `int` | **Yes** |     | Total duration of the album in seconds |
| `playCount` | `long` | No |     | Number of play of the album |
| `created` | `string` | **Yes** |     | Date the album was added. [ISO 8601]|
| `starred` | `string` | No |     | Date the album was starred. [ISO 8601]|
| `year` | `int` | No |     | The album year|
| `genre` | `string` | No |     | The album genre|
| `played` | `string` | No | **Yes**    | Date the album was last played. [ISO 8601]|
| `userRating` | `int` | No | **Yes**    | The user rating of the album. [1-5]|
| `recordLabels` | Array of [`RecordLabel`](../recordlabel) | No |  **Yes**   | The labels producing the album. |
| `musicBrainzId` | `string` | No |  **Yes**   | The album MusicBrainzID. |
| `genres` | Array of [`ItemGenre`](../itemgenre) | No | **Yes**    | The list of all genres of the album. |
| `artists` | Array of [`ArtistID3`](../artistid3) | No | **Yes**    | The list of all album artists of the album. (Note: Only the required [`ArtistID3`](../artistid3) fields should be returned by default)|
| `displayArtist` | `string` | No |  **Yes**   | The single value display artist. |
| `releaseTypes` | Array of `string` | No | **Yes**    | The types of this album release. (Album, Compilation, EP, Remix, ...).|
| `moods` | Array of `string` | No | **Yes**    | The list of all moods of the album. |
| `sortName` | `string` | No |  **Yes**   | The album sort name. |
| `originalReleaseDate` | [`ItemDate`](../itemdate) | No |   **Yes**   | Date the album was originally released. |
| `releaseDate` | [`ItemDate`](../itemdate)  | No |   **Yes**   | Date the specific edition of the album was released. *Note:* for files using ID3 tags, releaseDate should generally be read from the **TDRL** tag. Servers that use a different source for this field should document the behavior. |
| `isCompilation` | `boolean` | No |  **Yes**    | True if the album is a compilation. |
| `explicitStatus` | `string` | No |  **Yes**    | Returns "explicit" if at least one song is explicit, "clean" if no song is explicit and at least one is "clean" else "". |
| `discTitles` | Array of [`DiscTitle`](../disctitle) | No | **Yes**    | The list of all disc titles of the album. |

{{< alert color="warning" title="OpenSubsonic" >}}
New fields are added:

- `version`
- `played`
- `userRating`
- `recordLabels`
- `musicBrainzId`
- `genres`
- `artists`
- `displayArtist`
- `releaseType`
- `moods`
- `sortName`
- `originalReleaseDate`
- `isCompilation`
- `discTitles`
- `explicitStatus`

**Note**: All OpenSubsonic added fields are **optionals**. But if a server support a field it **must** return it with an empty / default value when not present in it's database so that clients knows what the server supports.

**Note**: Even if some added fields may looks duplicated, it's important to still return the legacy data for compatibility reasons.
{{< /alert >}}
