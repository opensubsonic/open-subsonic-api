---
title: "getArtists"
linkTitle: "getArtists"
categories:
- Browsing
description: >
  Returns all artists.
---

`http://your-server/rest/getArtists` Since [1.8.0](../../subsonic-versions)

Similar to [`getIndexes`](../getindexes), but organizes music according to ID3 tags.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `musicFolderId` | No  |  |  | If specified, only return artists in the music folder with the given ID. See [`getMusicFolders`](../getmusicfolders). |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getArtists.view?&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`artists`](../../responses/artists) element on success.

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
    "artists": {
      "ignoredArticles": "The An A Die Das Ein Eine Les Le La",
      "index": [
        {
          "name": "C",
          "artist": [
            {
              "id": "100000016",
              "name": "CARNÚN",
              "coverArt": "ar-100000016",
              "albumCount": 1
            },
            {
              "id": "100000027",
              "name": "Chi.Otic",
              "coverArt": "ar-100000027",
              "albumCount": 0
            }
          ]
        },
        {
          "name": "I",
          "artist": [
            {
              "id": "100000013",
              "name": "IOK-1",
              "coverArt": "ar-100000013",
              "albumCount": 1
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
    "artists": {
      "ignoredArticles": "The An A Die Das Ein Eine Les Le La",
      "index": [
        {
          "name": "C",
          "artist": [
            {
              "id": "100000016",
              "name": "CARNÚN",
              "coverArt": "ar-100000016",
              "albumCount": 1
            },
            {
              "id": "100000027",
              "name": "Chi.Otic",
              "coverArt": "ar-100000027",
              "albumCount": 0
            }
          ]
        },
        {
          "name": "I",
          "artist": [
            {
              "id": "100000013",
              "name": "IOK-1",
              "coverArt": "ar-100000013",
              "albumCount": 1
            }
          ]
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `artists` | [`artists`](../../responses/artistsid3) | **Yes** |   | The artist list |
