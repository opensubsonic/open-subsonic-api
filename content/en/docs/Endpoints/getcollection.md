---
title: "getCollection"
linkTitle: "getCollection [OS]"
categories:
- Collections
OpenSubsonic:
- Extension
description: >
  Returns a collection.
---

`http://your-server/rest/getCollection`

Returns a collection with the items it contains.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |  | ID of the collection to return, as obtained by `getCollections`. |
| `itemCount` | No |  |  | The number of items from the collection to return. If unset or set to a negative value, return all items. |
| `itemOffset` | No |  |  | The number of items to skip. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getCollection.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a top-level `collection` object of type [collectionWithItems](../../responses/collectionwithitems)

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
      "name": "testcreate",
      "comment" "this is a collection",
      "owner": "user",
      "public": true,
      "itemCount": 3,
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
        },
        {
          "genre": {
            "value": "vaporwave",
            "songCount": 6,
            "albumCount": 1
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
| `collection` | [`collectionWithItems`](../../responses/collectionwithitems) | **Yes** |   | The collection |
