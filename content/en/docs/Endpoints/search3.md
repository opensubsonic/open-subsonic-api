---
title: "search3"
linkTitle: "search3 [OS]"
opensubsonic:
- Clarification
categories:
- Searching
description: >
    Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
---

`http://your-server/rest/search3` Since [1.8.0](../../subsonic-versions)

Returns albums, artists and songs matching the given search criteria. Supports paging through the result.

Music is organized according to ID3 tags.

### Parameters

| Parameter | Requ. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `query` | **Yes** | See below* |     | Search query. |
| `artistCount` | No |   | 20  | Maximum number of artists to return. |
| `artistOffset` | No |   | 0   | Search result offset for artists. Used for paging. |
| `albumCount` | No |   | 20  | Maximum number of albums to return. |
| `albumOffset` | No|    | 0   | Search result offset for albums. Used for paging. |
| `songCount` | No |   | 20  | Maximum number of songs to return. |
| `songOffset` | No |   | 0   | Search result offset for songs. Used for paging. |
| `musicFolderId` | No |   |     | (Since [1.12.0](../../subsonic-versions)) Only return results from music folder with the given ID. See `getMusicFolders`. |

{{< alert color="warning" title="OpenSubsonic" >}}
Servers must support an **empty query** and return all the data to allow clients to properly access all the media information for offline sync.
{{< /alert >}}

### Example

{{< alert color="primary" >}} `http://your-server/rest/search3.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json&query=""&artistCount=1&albumCount=1&songCount=1` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) with a nested [`searchResult3`](../../responses/searchresult3) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true
    "searchResult3": {
      "artist": [
        {
          "id": "37ec820ca7193e17040c98f7da7c4b51",
          "name": "2 Mello",
          "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
          "albumCount": 1,
          "userRating": 5,
          "artistImageUrl": "https://demo.org/image.jpg"
        }
      ],
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
          "played": "2023-03-28T00:45:13Z",
          "created": "2023-03-10T02:19:35.784818075Z",
          "artistId": "91c3901ac465b9efc439e4be4270c2b6",
          "userRating": 4,
          "songCount": 8
        }
      ],
      "song": [
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
          "isVideo": false
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
    "searchResult3": {
      "artist": [
        {
          "id": "37ec820ca7193e17040c98f7da7c4b51",
          "name": "2 Mello",
          "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
          "albumCount": 1,
          "userRating": 5,
          "artistImageUrl": "https://demo.org/image.jpg"
        }
      ],
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
          "played": "2023-03-28T00:45:13Z",
          "created": "2023-03-10T02:19:35.784818075Z",
          "artistId": "91c3901ac465b9efc439e4be4270c2b6",
          "userRating": 4,
          "songCount": 8
        }
      ],
      "song": [
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
          "isVideo": false
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `searchResult3` | [`searchResult3`](../../responses/searchresult3) | **Yes** |     | The result of the search |

---

{{< alert color="warning" title="OpenSubsonic server support" >}}

| Server | Min vers. | Comment |
| --- | --- | --- |
| **Navidrome** | 0.3.0 | Support `query=""` |
| **gonic** | 0.15.0 | Support `query=""` |
| **Ampache** | 5.5.7 | Support `query=""` |
| **Funkwhale** | 1.2.8 | Support not passing a query parameter. |
| **Astiga** |  | Support `query=` |
| **LMS** | 3.35.1 | Support `query=` |
| **Nextcloud Music / ownCloud Music** | 1.10.0 | Support `query=` |
{{< /alert >}}
