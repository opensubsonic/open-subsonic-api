---
title: "bookmarks"
linkTitle: "bookmarks"
description: >
  Bookmarks list.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "bookmark": [
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
    },
    {
      "entry": {
        "id": "2b42782333450d02b177823e729664af",
        "parent": "dc8d8889a6fe08d8da7698c7ee1de61c",
        "isDir": false,
        "title": "Ill with the Skills",
        "album": "First Words",
        "artist": "The Polish Ambassador",
        "track": 17,
        "year": 2014,
        "coverArt": "mf-2b42782333450d02b177823e729664af_641edeb3",
        "size": 6219581,
        "contentType": "audio/mpeg",
        "suffix": "mp3",
        "duration": 255,
        "bitRate": 194,
        "bitDepth": 16,
        "samplingRate": 44100,
        "channelCount": 2,
        "path": "The Polish Ambassador/First Words/17 - Ill with the Skills.mp3",
        "playCount": 1,
        "played": "2023-03-15T15:23:37Z",
        "created": "2023-03-25T11:44:51Z",
        "albumId": "dc8d8889a6fe08d8da7698c7ee1de61c",
        "artistId": "64e1f796b283545d329cdf6a31a31dbe",
        "type": "music",
        "isVideo": false,
        "bookmarkPosition": 7000
      },
      "position": 7000,
      "username": "demo",
      "comment": "playSub bookmark",
      "created": "2023-03-25T11:44:51Z",
      "changed": "2023-03-25T11:44:51Z"
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "bookmark": [
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
    },
    {
      "entry": {
        "id": "2b42782333450d02b177823e729664af",
        "parent": "dc8d8889a6fe08d8da7698c7ee1de61c",
        "isDir": false,
        "title": "Ill with the Skills",
        "album": "First Words",
        "artist": "The Polish Ambassador",
        "track": 17,
        "year": 2014,
        "coverArt": "mf-2b42782333450d02b177823e729664af_641edeb3",
        "size": 6219581,
        "contentType": "audio/mpeg",
        "suffix": "mp3",
        "duration": 255,
        "bitRate": 194,
        "bitDepth": 16,
        "samplingRate": 44100,
        "channelCount": 2,
        "path": "The Polish Ambassador/First Words/17 - Ill with the Skills.mp3",
        "playCount": 1,
        "played": "2023-03-15T15:23:37Z",
        "created": "2023-03-25T11:44:51Z",
        "albumId": "dc8d8889a6fe08d8da7698c7ee1de61c",
        "artistId": "64e1f796b283545d329cdf6a31a31dbe",
        "type": "music",
        "isVideo": false,
        "bookmarkPosition": 7000
      },
      "position": 7000,
      "username": "demo",
      "comment": "playSub bookmark",
      "created": "2023-03-25T11:44:51Z",
      "changed": "2023-03-25T11:44:51Z"
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `bookmark` | Array of [`bookmark`](../bookmark) | No |     | List of bookmark |
