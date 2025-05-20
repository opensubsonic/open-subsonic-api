---
title: "getArtist"
linkTitle: "getArtist"
categories:
- Browsing
description: >
    Returns details for an artist.
---

`http://your-server/rest/getArtist` Since [1.8.0](../../subsonic-versions)

Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |    | The artist ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getArtist.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`artist`](../../responses/artist) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
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
      ],
      "album": [
        {
          "id": "200000002",
          "parent": "100000002",
          "album": "Colorsmoke EP",
          "title": "Colorsmoke EP",
          "name": "Colorsmoke EP",
          "isDir": true,
          "coverArt": "al-200000002",
          "songCount": 12,
          "created": "2021-02-23T04:24:48+00:00",
          "duration": 4568,
          "playCount": 1,
          "artistId": "100000002",
          "artist": "Synthetic",
          "year": 2007,
          "genre": "Electronic",
          "userRating": 5,
          "averageRating": 3,
          "starred": "2021-02-22T05:51:53Z"
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
    "artist": {
      "id": "37ec820ca7193e17040c98f7da7c4b51",
      "name": "2 Mello",
      "coverArt": "ar-37ec820ca7193e17040c98f7da7c4b51_0",
      "albumCount": 1,
      "userRating": 5,
      "artistImageUrl": "https://demo.org/image.jpg",
      "starred": "2017-04-11T10:42:50.842Z",
      "album": [
        {
          "id": "200000002",
          "parent": "100000002",
          "album": "Colorsmoke EP",
          "title": "Colorsmoke EP",
          "name": "Colorsmoke EP",
          "isDir": true,
          "coverArt": "al-200000002",
          "songCount": 12,
          "created": "2021-02-23T04:24:48+00:00",
          "duration": 4568,
          "playCount": 1,
          "artistId": "100000002",
          "artist": "Synthetic",
          "year": 2007,
          "genre": "Electronic",
          "userRating": 5,
          "averageRating": 3,
          "starred": "2021-02-22T05:51:53Z"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `artist` | [`artist`](../../responses/artistwithalbumsid3) | **Yes** |     | The artist |
