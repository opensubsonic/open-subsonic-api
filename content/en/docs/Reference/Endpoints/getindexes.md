---
title: "getIndexes"
linkTitle: "getIndexes"
description: >
    Returns an indexed structure of all artists.
---

`http://your-server/rest/getIndexes` Since [1.0.0](../subsonic-versions)

Returns an indexed structure of all artists.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `musicFolderId` | No  |  |    | If specified, only return artists in the music folder with the given ID. See [`getMusicFolders`](../getmusicfolders). |
| `ifModifiedSince` | No  |   |  | If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970). |

### Example

{{< alert color="primary" >}} <http://your-server/rest/getIndexes.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json> {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`indexes`](../../responses/indexes) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}{
  "subsonic-response": {
    "status":"ok",
    "version":"1.16.1",
    "type":"AwesomeServerName",
    "serverVersion":"0.1.3 (tag)",
    "indexes": {
        "ignoredArticles": "The An A Die Das Ein Eine Les Le La",
        "index": [
            {
                "name": "C",
                "artist": [
                    {
                        "id": "100000016",
                        "name": "CARN\u00daN",
                        "coverArt": "ar-100000016",
                        "albumCount": 1
                    },
                    {
                        "id": "100000027",
                        "name": "Chi.Otic",
                        "coverArt": "ar-100000027",
                        "albumCount": 0
                    },
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
{{< tab header="Subsonic" lang="json" >}}{
  "subsonic-response": {
    "status":"ok",
    "version":"1.16.1",
    "indexes": {
        "ignoredArticles": "The An A Die Das Ein Eine Les Le La",
        "index": [
            {
                "name": "C",
                "artist": [
                    {
                        "id": "100000016",
                        "name": "CARN\u00daN",
                        "coverArt": "ar-100000016",
                        "albumCount": 1
                    },
                    {
                        "id": "100000027",
                        "name": "Chi.Otic",
                        "coverArt": "ar-100000027",
                        "albumCount": 0
                    },
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
| `indexes` | [`indexes`](../../responses/indexes) | **Yes** |     | The indexed artist list |
