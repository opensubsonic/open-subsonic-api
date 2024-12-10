---
title: "getAlbumList2"
linkTitle: "getAlbumList2"
categories:
- Lists
description: >
  Returns a list of random, newest, highest rated etc. albums.
---

`http://your-server/rest/getAlbumList2` Since [1.8.0](../../subsonic-versions)

Similar to [`getAlbumList`](../getalbumlist), but organizes music according to ID3 tags.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `type` | **Yes** |   |  | The list type. Must be one of the following: `random`, `newest`, `highest`, `frequent`, `recent`. Since [1.8.0](../../subsonic-versions) you can also use `alphabeticalByName` or `alphabeticalByArtist` to page through all albums alphabetically, and `starred` to retrieve starred albums. Since [1.10.1](../../subsonic-versions) you can use `byYear` and `byGenre` to list albums in a given year range or genre. |
| `size` | No  | |10  | The number of albums to return. Max 500. |
| `offset` | No  || 0   | The list offset. Useful if you for example want to page through the list of newest albums. |
| `fromYear` | **Yes** (if `type` is `byYear`) |  |   | The first year in the range. If `fromYear > toYear` a reverse chronological list is returned. |
| `toYear` | **Yes** (if `type` is `byYear`) | |  | The last year in the range. |
| `genre` | **Yes** (if `type` is `byGenre`) | |  | The name of the genre, e.g., "Rock". |
| `musicFolderId` | No  | |  | (Since [1.11.0](../../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getAlbumList2.view?type=random&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`albumList2`](../../responses/albumlist2) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "albumList2": {
      "album": [
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
              "name": "Artist 1",
              "musicBrainzId": "",
              "sortName": "artist 1",
              "roles": [
                "artist",
                "albumartist"
              ]
            },
            {
              "id": "ar-2",
              "name": "Artist 2",
              "musicBrainzId": "db92a151-1ac2-438b-bc43-b82e149ddd50",
              "sortName": "artist 2",
              "roles": []
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
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "albumList2": {
      "album": [
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
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `albumList2` | [`albumList2`](../../responses/albumlist2) | **Yes** |   | The album list |
