---
title: "createCollection"
linkTitle: "createCollection [OS]"
categories:
- Collections
opensubsonic:
- Extension
description: >
  Creates a collection.
---

`http://your-server/rest/createCollection`

Creates a collection.
This endpoint must be accessed using an HTTP POST request.

### Request Body

The request payload should be provided in the body as a JSON object.

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `name` | **Yes** |  |  | The human-readable name of the collection. |
| `comment` | No |  |  | The collection comment. |
| `public` | No |  | `false`  | `true` if the collection should be visible to all users, `false` otherwise. |
| `items` | No |  |  | A list of [collectionItemID](../payloads/collectionitemid) objects. |

### Example request

{{< alert color="primary" >}} `POST http://your-server/rest/createCollection.view?u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

{{< tabpane persist=false >}}
{{< tab header="Request body" lang="json">}}
{
  "name": "test collection",
  "comment": "this is a collection",
  "items": [
    {
      "type": "song",
      "id": "300000060"
    },
    {
      "type": "album",
      "id": "200000021"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a top-level [`collection`](../../responses/collection) object on success.

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
    "collection": {
      "id": "800000075",
      "name": "test collection",
      "comment" "this is a collection",
      "owner": "user",
      "public": false,
      "itemCount": 2,
      "created": "2023-03-16T03:18:41+00:00",
      "changed": "2023-03-16T03:18:41+00:00",
      "items": [
        {
          "song": {
            "id": "300000060",
            "parent": "200000002",
            "title": "BrownSmoke",
            "isDir": false,
            "isVideo": false,
            "type": "music",
            "albumId": "200000002",
            "album": "Colorsmoke EP",
            "artistId": "100000002",
            "artist": "Synthetic",
            "coverArt": "300000060",
            "duration": 304,
            "bitRate": 20,
            "bitDepth": 16,
            "samplingRate": 44100,
            "channelCount": 2,
            "userRating": 5,
            "averageRating": 5,
            "track": 4,
            "year": 2007,
            "genre": "Electronic",
            "size": 792375,
            "discNumber": 1,
            "suffix": "wma",
            "contentType": "audio/x-ms-wma",
            "path": "Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007/04-Synthetic_-_BrownSmokeYSBM20k22khS.wma"
          }
        },
        {
          "album": {
            "id": "200000021",
            "parent": "100000036",
            "album": "Forget and Remember",
            "title": "Forget and Remember",
            "name": "Forget and Remember",
            "isDir": true,
            "coverArt": "al-200000021",
            "songCount": 20,
            "created": "2021-07-22T02:09:31+00:00",
            "duration": 4248,
            "playCount": 0,
            "artistId": "100000036",
            "artist": "Comfort Fit",
            "year": 2005,
            "genre": "Hip-Hop"
          }
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `collection` | [`CollectionWithItems`](../../responses/collectionwithitems) | **Yes** |   | The collection |
