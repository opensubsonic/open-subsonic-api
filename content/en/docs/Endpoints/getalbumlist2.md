---
title: "getAlbumList2"
linkTitle: "getAlbumList2 [OS]"
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
    "openSubsonic": true
    "albumList2": {
      "totalCount": 2,
      "album": [
        {
          "id": "200000021",
          "album": "Forget and Remember",
          "title": "Forget and Remember",
          "name": "Forget and Remember",
          "coverArt": "al-200000021",
          "songCount": 20,
          "created": "2021-07-22T02:09:31+00:00",
          "duration": 4248,
          "playCount": 0,
          "artistId": "100000036",
          "artist": "Comfort Fit",
          "year": 2005,
          "genre": "Hip-Hop"
        },
        {
          "id": "200000012",
          "album": "Buried in Nausea",
          "title": "Buried in Nausea",
          "name": "Buried in Nausea",
          "coverArt": "al-200000012",
          "songCount": 9,
          "created": "2021-02-24T01:44:21+00:00",
          "duration": 1879,
          "playCount": 0,
          "artistId": "100000019",
          "artist": "Various Artists",
          "year": 2012,
          "genre": "Punk"
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
          "id": "200000021",
          "album": "Forget and Remember",
          "title": "Forget and Remember",
          "name": "Forget and Remember",
          "coverArt": "al-200000021",
          "songCount": 20,
          "created": "2021-07-22T02:09:31+00:00",
          "duration": 4248,
          "playCount": 0,
          "artistId": "100000036",
          "artist": "Comfort Fit",
          "year": 2005,
          "genre": "Hip-Hop"
        },
        {
          "id": "200000012",
          "album": "Buried in Nausea",
          "title": "Buried in Nausea",
          "name": "Buried in Nausea",
          "coverArt": "al-200000012",
          "songCount": 9,
          "created": "2021-02-24T01:44:21+00:00",
          "duration": 1879,
          "playCount": 0,
          "artistId": "100000019",
          "artist": "Various Artists",
          "year": 2012,
          "genre": "Punk"
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
