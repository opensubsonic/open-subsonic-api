---
title: "getSongsByGenre"
linkTitle: "getSongsByGenre [OS]"
categories:
- Lists
description: >
    Returns songs in a given genre.
---

`http://your-server/rest/getSongsByGenre` Since [1.9.0](../../subsonic-versions)

Returns songs in a given genre.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `genre` | **Yes** | |    | The genre, as returned by `getGenres`. |
| `count` | No  | | 10  | The maximum number of songs to return. Max 500. |
| `offset` | No  | | 0   | The offset. Useful if you want to page through the songs in a genre. |
| `musicFolderId` | No |  |    | (Since [1.12.0](../../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getSongsByGenre.view?genre=Rock&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`songsByGenre`](../../responses/songsbygenre) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
    "subsonic-response": {
        "status": "ok",
        "version": "1.16.1",
        "type": "ampache",
        "serverVersion": "6.6.0",
        "songsByGenre": {
            "totalCount": 2,
            "song": [
                {
                    "id": "300000054",
                    "parent": "200000002",
                    "title": "Red&GreenSmoke",
                    "isDir": false,
                    "isVideo": false,
                    "type": "music",
                    "albumId": "200000002",
                    "album": "Colorsmoke EP",
                    "artistId": "100000002",
                    "artist": "Synthetic",
                    "coverArt": "200000002",
                    "duration": 400,
                    "bitRate": 62,
                    "track": 5,
                    "year": 2007,
                    "genre": "Electronic",
                    "size": 3209468,
                    "discNumber": 1,
                    "suffix": "mp3",
                    "contentType": "audio/mpeg",
                    "path": "/media/music/Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007(1)/05-Synthetic_-_RedGreenSmokePM20k44khM_64kb.mp3"
                },
                {
                    "id": "300000055",
                    "parent": "200000002",
                    "title": "Red&GreenSmoke",
                    "isDir": false,
                    "isVideo": false,
                    "type": "music",
                    "albumId": "200000002",
                    "album": "Colorsmoke EP",
                    "artistId": "100000002",
                    "artist": "Synthetic",
                    "coverArt": "200000002",
                    "duration": 400,
                    "bitRate": 62,
                    "track": 5,
                    "year": 2007,
                    "genre": "Electronic",
                    "size": 3209886,
                    "discNumber": 1,
                    "suffix": "mp3",
                    "contentType": "audio/mpeg",
                    "path": "/media/music/Synthetic/Synthetic_-_Colorsmoke_EP-20k217-2007(1)/05-Synthetic_-_RedGreenSmokePM20k22khS_64kb.mp3"
                }
            ]
        }
    }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `songsByGenre` | [`songsByGenre`](../../responses/songsbygenre) | **Yes** |     | The song |
