---
title: "bookmark"
linkTitle: "bookmark"
description: >
  A bookmark.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "entry": {
    "id": "113bf5989ad15ce2cf1834ba9622983f",
    "parent": "b87a936c682c49d4494c7ccb08c22d23",
    "isDir": false,
    "title": "Stay Out Here",
    "album": "Shaking The Habitual",
    "artist": "The Knife",
    "track": 11,
    "year": 2013,
    "genre": "Electronic",
    "coverArt": "al-b87a936c682c49d4494c7ccb08c22d23_0",
    "size": 21096309,
    "contentType": "audio/mp4",
    "suffix": "m4a",
    "duration": 642,
    "bitRate": 257,
    "bitDepth": 16,
    "samplingRate": 44100,
    "channelCount": 2,
    "path": "The Knife/Shaking The Habitual/11 - Stay Out Here.m4a",
    "created": "2023-03-13T16:30:35Z",
    "albumId": "b87a936c682c49d4494c7ccb08c22d23",
    "artistId": "b29e9a9d780cb0e133f3add5662771b9",
    "type": "music",
    "isVideo": false,
    "bookmarkPosition": 129000
  },
  "position": 129000,
  "username": "demo",
  "comment": "",
  "created": "2023-03-13T16:30:35Z",
  "changed": "2023-03-13T16:30:35Z"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "entry": {
    "id": "113bf5989ad15ce2cf1834ba9622983f",
    "parent": "b87a936c682c49d4494c7ccb08c22d23",
    "isDir": false,
    "title": "Stay Out Here",
    "album": "Shaking The Habitual",
    "artist": "The Knife",
    "track": 11,
    "year": 2013,
    "genre": "Electronic",
    "coverArt": "al-b87a936c682c49d4494c7ccb08c22d23_0",
    "size": 21096309,
    "contentType": "audio/mp4",
    "suffix": "m4a",
    "duration": 642,
    "bitRate": 257,
    "bitDepth": 16,
    "samplingRate": 44100,
    "channelCount": 2,
    "path": "The Knife/Shaking The Habitual/11 - Stay Out Here.m4a",
    "created": "2023-03-13T16:30:35Z",
    "albumId": "b87a936c682c49d4494c7ccb08c22d23",
    "artistId": "b29e9a9d780cb0e133f3add5662771b9",
    "type": "music",
    "isVideo": false,
    "bookmarkPosition": 129000
  },
  "position": 129000,
  "username": "demo",
  "comment": "",
  "created": "2023-03-13T16:30:35Z",
  "changed": "2023-03-13T16:30:35Z"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `position` | `long` | **Yes** |     | Bookmark position in seconds |
| `username` | `string` | **Yes** |     | Username |
| `comment` | `string` | No|     | Bookmark comment |
| `created` | `string` | **Yes** |     | Bookmark creation date [ISO 8601]|
| `changed` | `string` | **Yes**|     | Bookmark last updated date [ISO 8601]|
| `entry` | [`Child`](../child) | **Yes** |     | The bookmark file |
