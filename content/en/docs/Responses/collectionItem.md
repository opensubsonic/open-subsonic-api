---
title: "collectionItem"
linkTitle: "collectionItem [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  A collection item.
---

An item in a collection is a wrapper around one of the following types:

- [Child](../responses/child)
- [AlbumID3](../albumid3/)
- [ArtistID3](../artistid3/)
- [Playlist](../playlist/)
- [Genre](../genre)
- [InternetRadioStation](../internetradiostation)
- [PodcastEpisode](../podcastepisode)
- [PodcastChannel](../podcastchannel)

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="Song (child)" lang="json">}}
{
  "song": {
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
    "bitDepth": 16,
    "samplingRate": 44100,
    "channelCount": 2,
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
    "isrc": [
      "USSM18300073",
      "DELV42300297",
      "DEE868300011",
      "DEE868300007"
    ],
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
    "explicitStatus": "explicit",
    "replayGain": {
      "trackGain": 0.1,
      "albumGain": 1.1,
      "trackPeak": 9.2,
      "albumPeak": 9,
      "baseGain": 0
    },
    "works": [
      {
        "name": "Symphony No. 5 in C minor, Op. 67",
        "musicBrainzId": "d03bff61-26fc-301b-98ac-4d8e85771cbc"
      }
    ],
    "movements": [
      {
        "name": "Andante con moto",
        "number": 2,
        "count": 4
      }
    ],
    "groupings": ["Soundtrack", "Live"]
  }
}
{{< /tab >}}
{{< tab header="Album" lang="json">}}
{
  "album": {
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
            "coverArt": "42"
        },
        {
            "disc": 2,
            "title": "Disc 1 title"
            "coverArt": "6547"
        }
    ]
  }
}
{{< /tab >}}
{{< tab header="Artist" lang="json">}}
{
  "artist": {
    "id": "37ec820ca7193e17040c98f7da7c4b51",
    "name": "2 Mello",
    "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
    "albumCount": 1,
    "userRating": 5,
    "artistImageUrl": "https://demo.org/image.jpg",
    "starred": "2017-04-11T10:42:50.842Z",
    "musicBrainzId": "189002e7-3285-4e2e-92a3-7f6c30d407a2",
    "sortName": "Mello (2)",
    "roles": [
      "artist",
      "albumartist",
      "composer"
    ]
  }
}
{{< /tab >}}
{{< tab header="Playlist" lang="json">}}
{
  "playlist": {
    "id": "800000075",
    "name": "testplaylist",
    "owner": "user",
    "public": true,
    "created": "2023-03-16T03:18:41+00:00",
    "changed": "2023-03-16T03:18:41+00:00",
    "songCount": 1,
    "duration": 304,
    "readonly": true,
    "validUntil": "2023-03-23T03:18:41+00:00"
  }
}
{{< /tab >}}
{{< tab header="Genre" lang="json">}}
{
  "genre": {
    "value": "vaporwave",
    "songCount": 6,
    "albumCount": 1
  }
}
{{< /tab >}}
{{< tab header="Internet radio station" lang="json">}}
{
  "internetRadioStation": {
    "id": "2",
    "name": "HBR1.com - I.D.M. Tranceponder",
    "streamUrl": "http://ubuntu.hbr1.com:19800/trance.ogg",
    "homePageUrl": "http://www.hbr1.com/"
  }
}
{{< /tab >}}
{{< tab header="Podcast episode" lang="json">}}
{
  "podcastEpisode": {
    "id": "7390",
    "parent": "7389",
    "isDir": "false",
    "title": "Jonas Gahr Støre",
    "album": "NRK – Hallo P3",
    "artist": "Podcast",
    "year": "2015",
    "coverArt": "7389",
    "size": "41808585",
    "contentType": "audio/mpeg",
    "suffix": "mp3",
    "duration": "2619",
    "bitRate": "128",
    "isVideo": "false",
    "created": "2015-09-07T20:07:31.000Z",
    "artistId": "453",
    "type": "podcast",
    "streamId": "7410",
    "channelId": "17",
    "description": "Jonas Gahr Støre fra Arbeiderpartiet er med i dagens partilederutspørring i Hallo P3!",
    "status": "completed",
    "publishDate": "2015-09-07T15:29:00.000Z"
  }
}
{{< /tab >}}
{{< tab header="Podcast" lang="json">}}
{
  "podcast": {
    "id": "1",
    "url": "http://downloads.bbc.co.uk/podcasts/fivelive/drkarl/rss.xml",
    "title": "Dr Karl and the Naked Scientist",
    "description": "Dr Chris Smith aka The Naked Scientist with the latest news from the world of science and Dr Karl answers listeners' science questions.",
    "coverArt": "pod-1",
    "originalImageUrl": "http://downloads.bbc.co.uk/podcasts/fivelive/drkarl/drkarl.jpg",
    "status": "completed"
  }
}
{{< /tab >}}
{{< /tabpane >}}
