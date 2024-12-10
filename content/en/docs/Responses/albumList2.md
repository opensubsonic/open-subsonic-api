---
title: "albumList2"
linkTitle: "albumList2"
description: >
  Album list.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
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
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `album` | Array of [`AlbumID3`](../albumid3) | No |     | Artist albums|
