---
title: "getSongsByGenre"
linkTitle: "getSongsByGenre"
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

{{< alert color="primary" >}} <http://your-server/rest/getSongsByGenre.view?genre=Rock&u=demo&p=demo&v=1.13.0&c=AwesomeServerName&f=json> {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`songsByGenre`](../../responses/songsbygenre) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `songsByGenre` | [`songsByGenre`](../../responses/songsbygenre) | **Yes** |     | The song |
