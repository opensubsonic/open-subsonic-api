---
title: "Docs to migrate"
linkTitle: "Docs to migrate"
weight: 1000
description: >
  Docs to migrate.
---


---
### getMusicFolders

`http://your-server/rest/getMusicFolders` Since [1.0.0](../subsonic-versions)

Returns all configured top-level music folders. Takes no extra parameters.

Returns a `<subsonic-response>` element with a nested `<musicFolders>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/musicFolders_example_1.xml).


---
### getIndexes

`http://your-server/rest/getIndexes` Since [1.0.0](../subsonic-versions)

Returns an indexed structure of all artists.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | If specified, only return artists in the music folder with the given ID. See `getMusicFolders`. |
| `ifModifiedSince` | No  |     | If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970). |

Returns a `<subsonic-response>` element with a nested `<indexes>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/indexes_example_1.xml).


---
### getMusicDirectory

`http://your-server/rest/getMusicDirectory`
Since [1.0.0](../subsonic-versions)

Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory. |

Returns a `<subsonic-response>` element with a nested `<directory>` element on success. [Example 1](http://subsonic.org/pages/inc/api/examples/directory_example_1.xml). [Example 2](http://subsonic.org/pages/inc/api/examples/directory_example_2.xml).


---
### getGenres

`http://your-server/rest/getGenres` Since [1.9.0](../subsonic-versions)

Returns all genres.

Returns a `<subsonic-response>` element with a nested `<genres>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/genres_example_1.xml).


---
### getArtists

`http://your-server/rest/getArtists` Since [1.8.0](../subsonic-versions)

Similar to `getIndexes`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | If specified, only return artists in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<artists>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artists_example_1.xml).


---
### getArtist

`http://your-server/rest/getArtist` Since [1.8.0](../subsonic-versions)

Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist ID. |

Returns a `<subsonic-response>` element with a nested `<artist>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artist_example_1.xml).


---
### getAlbum

`http://your-server/rest/getAlbum`
Since [1.8.0](../subsonic-versions)

Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The album ID. |

Returns a `<subsonic-response>` element with a nested `<album>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/album_example_1.xml).


---
### getSong

`http://your-server/rest/getSong` Since [1.8.0](../subsonic-versions)

Returns details for a song.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The song ID. |

Returns a `<subsonic-response>` element with a nested `<song>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/song_example_1.xml).


---
### getVideos

`http://your-server/rest/getVideos` Since [1.8.0](../subsonic-versions)

Returns all video files.

Returns a `<subsonic-response>` element with a nested `<videos>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/videos_example_1.xml).


---
### getVideoInfo

`http://your-server/rest/getVideoInfo` Since [1.14.0](../subsonic-versions)

Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The video ID. |

Returns a `<subsonic-response>` element with a nested `<videoInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/videoInfo_example_1.xml).


---
### getArtistInfo

`http://your-server/rest/getArtistInfo` Since [1.11.0](../subsonic-versions)

Returns artist info with biography, image URLs and similar artists, using data from [last.fm](http://last.fm).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist, album or song ID. |
| `count` | No  | 20  | Max number of similar artists to return. |
| `includeNotPresent` | No  | false | Whether to return artists that are not present in the media library. |

Returns a `<subsonic-response>` element with a nested `<artistInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artistInfo_example_1.xml).


---
### getArtistInfo2

`http://your-server/rest/getArtistInfo2` Since [1.11.0](../subsonic-versions)

Similar to `getArtistInfo`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist ID. |
| `count` | No  | 20  | Max number of similar artists to return. |
| `includeNotPresent` | No  | false | Whether to return artists that are not present in the media library. |

Returns a `<subsonic-response>` element with a nested `<artistInfo2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/artistInfo2_example_1.xml).


---
### getAlbumInfo

`http://your-server/rest/getAlbumInfo` Since [1.14.0](../subsonic-versions)

Returns album notes, image URLs etc, using data from [last.fm](http://last.fm).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The album or song ID. |

Returns a `<subsonic-response>` element with a nested `<albumInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumInfo_example_1.xml).


---
### getAlbumInfo2

`http://your-server/rest/getAlbumInfo2` Since [1.14.0](../subsonic-versions)

Similar to `getAlbumInfo`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The album ID. |

Returns a `<subsonic-response>` element with a nested `<albumInfo>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumInfo_example_1.xml).


---
### getSimilarSongs

`http://your-server/rest/getSimilarSongs` Since [1.11.0](../subsonic-versions)

Returns a random collection of songs from the given artist and similar artists, using data from [last.fm](http://last.fm). Typically used for artist radio features.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist, album or song ID. |
| `count` | No  | 50  | Max number of songs to return. |

Returns a `<subsonic-response>` element with a nested `<similarSongs>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/similarSongs_example_1.xml).


---
### getSimilarSongs2

`http://your-server/rest/getSimilarSongs2` Since [1.11.0](../subsonic-versions)

Similar to `getSimilarSongs`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The artist ID. |
| `count` | No  | 50  | Max number of songs to return. |

Returns a `<subsonic-response>` element with a nested `<similarSongs2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/similarSongs2_example_1.xml).


---
### getTopSongs

`http://your-server/rest/getTopSongs` Since [1.13.0](../subsonic-versions)

Returns top songs for the given artist, using data from [last.fm](http://last.fm).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `artist` | Yes |     | The artist name. |
| `count` | No  | 50  | Max number of songs to return. |

Returns a `<subsonic-response>` element with a nested `<topSongs>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/topSongs_example_1.xml).


---
### getAlbumList

`http://your-server/rest/getAlbumList` Since [1.2.0](../subsonic-versions)

Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `type` | Yes |     | The list type. Must be one of the following: `random`, `newest`, `highest`, `frequent`, `recent`. Since [1.8.0](../subsonic-versions) you can also use `alphabeticalByName` or `alphabeticalByArtist` to page through all albums alphabetically, and `starred` to retrieve starred albums. Since [1.10.1](../subsonic-versions) you can use `byYear` and `byGenre` to list albums in a given year range or genre. |
| `size` | No  | 10  | The number of albums to return. Max 500. |
| `offset` | No  | 0   | The list offset. Useful if you for example want to page through the list of newest albums. |
| `fromYear` | Yes (if `type` is `byYear`) |     | The first year in the range. If `fromYear > toYear` a reverse chronological list is returned. |
| `toYear` | Yes (if `type` is `byYear`) |     | The last year in the range. |
| `genre` | Yes (if `type` is `byGenre`) |     | The name of the genre, e.g., "Rock". |
| `musicFolderId` | No  |     | (Since [1.11.0](../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<albumList>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumList_example_1.xml).


---
### getAlbumList2

`http://your-server/rest/getAlbumList2` Since [1.8.0](../subsonic-versions)

Similar to `getAlbumList`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `type` | Yes |     | The list type. Must be one of the following: `random`, `newest`, `frequent`, `recent`, `starred`, `alphabeticalByName` or `alphabeticalByArtist`. Since [1.10.1](../subsonic-versions) you can use `byYear` and `byGenre` to list albums in a given year range or genre. |
| `size` | No  | 10  | The number of albums to return. Max 500. |
| `offset` | No  | 0   | The list offset. Useful if you for example want to page through the list of newest albums. |
| `fromYear` | Yes (if `type` is `byYear`) |     | The first year in the range. If `fromYear > toYear` a reverse chronological list is returned. |
| `toYear` | Yes (if `type` is `byYear`) |     | The last year in the range. |
| `genre` | Yes (if `type` is `byGenre`) |     | The name of the genre, e.g., "Rock". |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<albumList2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/albumList2_example_1.xml).


---
### getRandomSongs

`http://your-server/rest/getRandomSongs` Since [1.2.0](../subsonic-versions)

Returns random songs matching the given criteria.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `size` | No  | 10  | The maximum number of songs to return. Max 500. |
| `genre` | No  |     | Only returns songs belonging to this genre. |
| `fromYear` | No  |     | Only return songs published after or in this year. |
| `toYear` | No  |     | Only return songs published before or in this year. |
| `musicFolderId` | No  |     | Only return songs in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<randomSongs>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/randomSongs_example_1.xml).


---
### getSongsByGenre

`http://your-server/rest/getSongsByGenre` Since [1.9.0](../subsonic-versions)

Returns songs in a given genre.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `genre` | Yes |     | The genre, as returned by `getGenres`. |
| `count` | No  | 10  | The maximum number of songs to return. Max 500. |
| `offset` | No  | 0   | The offset. Useful if you want to page through the songs in a genre. |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return albums in the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<songsByGenre>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/songsByGenre_example_1.xml).


---
### getNowPlaying

`http://your-server/rest/getNowPlaying` Since [1.0.0](../subsonic-versions)

Returns what is currently being played by all users. Takes no extra parameters.

Returns a `<subsonic-response>` element with a nested `<nowPlaying>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/nowPlaying_example_1.xml).


---
### getStarred

`http://your-server/rest/getStarred` Since [1.8.0](../subsonic-versions)

Returns starred songs, albums and artists.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<starred>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/starred_example_1.xml).


---
### getStarred2

`http://your-server/rest/getStarred2` Since [1.8.0](../subsonic-versions)

Similar to `getStarred`, but organizes music according to ID3 tags.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<starred2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/starred2_example_1.xml).


---
### search

`http://your-server/rest/search` Since [1.0.0](../subsonic-versions)
Deprecated since [1.4.0](../subsonic-versions), use `search2` instead.

Returns a listing of files matching the given search criteria. Supports paging through the result.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `artist` | No  |     | Artist to search for. |
| `album` | No  |     | Album to searh for. |
| `title` | No  |     | Song title to search for. |
| `any` | No  |     | Searches all fields. |
| `count` | No  | 20  | Maximum number of results to return. |
| `offset` | No  | 0   | Search result offset. Used for paging. |
| `newerThan` | No  |     | Only return matches that are newer than this. Given as milliseconds since 1970. |

Returns a `<subsonic-response>` element with a nested `<searchResult>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/searchResult_example_1.xml).


---
### search2

`http://your-server/rest/search2` Since [1.4.0](../subsonic-versions)

Returns albums, artists and songs matching the given search criteria. Supports paging through the result.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `query` | Yes |     | Search query. |
| `artistCount` | No  | 20  | Maximum number of artists to return. |
| `artistOffset` | No  | 0   | Search result offset for artists. Used for paging. |
| `albumCount` | No  | 20  | Maximum number of albums to return. |
| `albumOffset` | No  | 0   | Search result offset for albums. Used for paging. |
| `songCount` | No  | 20  | Maximum number of songs to return. |
| `songOffset` | No  | 0   | Search result offset for songs. Used for paging. |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) Only return results from the music folder with the given ID. See `getMusicFolders`. |

Returns a `<subsonic-response>` element with a nested `<searchResult2>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/searchResult2_example_1.xml).

---
### getPlaylists

`http://your-server/rest/getPlaylists` Since [1.0.0](../subsonic-versions)

Returns all playlists a user is allowed to play.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | no  |     | (Since [1.8.0](../subsonic-versions)) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used. |

Returns a `<subsonic-response>` element with a nested `<playlists>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/playlists_example_1.xml).


---
### getPlaylist

`http://your-server/rest/getPlaylist` Since [1.0.0](../subsonic-versions)

Returns a listing of files in a saved playlist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | yes |     | ID of the playlist to return, as obtained by `getPlaylists`. |

Returns a `<subsonic-response>` element with a nested `<playlist>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/playlist_example_1.xml).


---
### createPlaylist

`http://your-server/rest/createPlaylist` Since [1.2.0](../subsonic-versions)

Creates (or updates) a playlist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `playlistId` | Yes (if updating) |     | The playlist ID. |
| `name` | Yes (if creating) |     | The human-readable name of the playlist. |
| `songId` | No  |     | ID of a song in the playlist. Use one `songId` parameter for each song in the playlist. |

Since [1.14.0](../subsonic-versions) the newly created/updated playlist is returned. In earlier versions an empty `<subsonic-response>` element is returned.


---
### updatePlaylist

`http://your-server/rest/updatePlaylist` Since [1.8.0](../subsonic-versions)

Updates a playlist. Only the owner of a playlist is allowed to update it.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `playlistId` | Yes |     | The playlist ID. |
| `name` | No  |     | The human-readable name of the playlist. |
| `comment` | No  |     | The playlist comment. |
| `public` | No  |     | `true` if the playlist should be visible to all users, `false` otherwise. |
| `songIdToAdd` | No  |     | Add this song with this ID to the playlist. Multiple parameters allowed. |
| `songIndexToRemove` | No  |     | Remove the song at this position in the playlist. Multiple parameters allowed. |

Returns an empty `<subsonic-response>` element on success.


---
### deletePlaylist

`http://your-server/rest/deletePlaylist` Since [1.2.0](../subsonic-versions)

Deletes a saved playlist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | yes |     | ID of the playlist to delete, as obtained by `getPlaylists`. |

Returns an empty `<subsonic-response>` element on success.


---
### stream

`http://your-server/rest/stream` Since [1.0.0](../subsonic-versions)

Streams a given media file.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory. |
| `maxBitRate` | No  |     | (Since [1.2.0](../subsonic-versions)) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed. |
| `format` | No  |     | (Since [1.6.0](../subsonic-versions)) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with [1.9.0](../subsonic-versions) you can use the special value "raw" to disable transcoding. |
| `timeOffset` | No  |     | Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping. |
| `size` | No  |     | (Since [1.6.0](../subsonic-versions)) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480". |
| `estimateContentLength` | No  | false | (Since [1.8.0](../subsonic-versions)). If set to "true", the *Content-Length* HTTP header will be set to an estimated value for transcoded or downsampled media. |
| `converted` | No  | false | (Since [1.14.0](../subsonic-versions)) Only applicable to video streaming. Servers can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original. |

Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").


---
### download

`http://your-server/rest/download` Since [1.0.0](../subsonic-versions)

Downloads a given media file. Similar to `stream`, but this method returns the original media data without transcoding or downsampling.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory. |

Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").


---
### hls

`http://your-server/rest/hls.m3u8` Since [1.8.0](../subsonic-versions)

Creates an HLS ([HTTP Live Streaming](http://en.wikipedia.org/wiki/HTTP_Live_Streaming)) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports **adaptive bitrate streaming**, see the `bitRate` parameter.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | A string which uniquely identifies the media file to stream. |
| `bitRate` | No  |     | If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a **variant playlist**, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since [1.9.0](../subsonic-versions) you may explicitly request a certain width (480) and height (360) like so: `bitRate=1000@480x360` |
| `audioTrack` | No  |     | The ID of the audio track to use. See `getVideoInfo` for how to get the list of available audio tracks for a video. |

Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").


---
### getCaptions

`http://your-server/rest/getCaptions` Since [1.14.0](../subsonic-versions)

Returns captions (subtitles) for a video. Use `getVideoInfo` to get a list of available captions.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the video. |
| `format` | No  |     | Preferred captions format ("srt" or "vtt"). |

Returns the raw video captions.


---
### getCoverArt

`http://your-server/rest/getCoverArt` Since [1.0.0](../subsonic-versions)

Returns a cover art image.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of a song, album or artist. |
| `size` | No  |     | If specified, scale image to this size. |

Returns the cover art image in binary form.


---
### getLyrics

`http://your-server/rest/getLyrics` Since [1.2.0](../subsonic-versions)

Searches for and returns lyrics for a given song.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `artist` | No  |     | The artist name. |
| `title` | No  |     | The song title. |

Returns a `<subsonic-response>` element with a nested `<lyrics>` element on success. The `<lyrics>` element is empty if no matching lyrics was found. [Example](http://subsonic.org/pages/inc/api/examples/lyrics_example_1.xml).


---
### getAvatar

`http://your-server/rest/getAvatar` Since [1.8.0](../subsonic-versions)

Returns the avatar (personal image) for a user.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The user in question. |

Returns the avatar image in binary form.


---
### star

`http://your-server/rest/star` Since [1.8.0](../subsonic-versions)

Attaches a star to a song, album or artist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | No  |     | The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed. |
| `albumId` | No  |     | The ID of an album to star. Use this rather than `id` if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed. |
| `artistId` | No  |     | The ID of an artist to star. Use this rather than `id` if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed. |

Returns an empty `<subsonic-response>` element on success.


---
### unstar

`http://your-server/rest/unstar` Since [1.8.0](../subsonic-versions)

Removes the star from a song, album or artist.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | No  |     | The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed. |
| `albumId` | No  |     | The ID of an album to unstar. Use this rather than `id` if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed. |
| `artistId` | No  |     | The ID of an artist to unstar. Use this rather than `id` if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed. |

Returns an empty `<subsonic-response>` element on success.


---
### setRating

`http://your-server/rest/setRating` Since [1.6.0](../subsonic-versions)

Sets the rating for a music file.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | A string which uniquely identifies the file (song) or folder (album/artist) to rate. |
| `rating` | Yes |     | The rating between 1 and 5 (inclusive), or 0 to remove the rating. |

Returns an empty `<subsonic-response>` element on success.


---
### scrobble

`http://your-server/rest/scrobble` Since [1.5.0](../subsonic-versions)

Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:

- "Scrobbles" the media files on last.fm if the user has configured his/her last.fm credentials on the server.
- Updates the play count and last played timestamp for the media files. (Since [1.11.0](../subsonic-versions))
- Makes the media files appear in the "Now playing" page in the web app, and appear in the list of songs returned by `getNowPlaying` (Since [1.11.0](../subsonic-versions))

Since [1.8.0](../subsonic-versions) you may specify multiple `id` (and optionally `time`) parameters to scrobble multiple files.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | A string which uniquely identifies the file to scrobble. |
| `time` | No  |     | (Since [1.8.0](../subsonic-versions)) The time (in milliseconds since 1 Jan 1970) at which the song was listened to. |
| `submission` | No  | True | Whether this is a "submission" or a "now playing" notification. |

Returns an empty `<subsonic-response>` element on success.


---
### getShares

`http://your-server/rest/getShares` Since [1.6.0](../subsonic-versions)

Returns information about shared media this user is allowed to manage. Takes no extra parameters.

Returns a `<subsonic-response>` element with a nested `<shares>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/shares_example_1.xml).


---
### createShare

`http://your-server/rest/createShare` Since [1.6.0](../subsonic-versions)

Creates a public URL that can be used by anyone to stream music or video from the server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of a song, album or video to share. Use one `id` parameter for each entry to share. |
| `description` | No  |     | A user-defined description that will be displayed to people visiting the shared media. |
| `expires` | No  |     | The time at which the share expires. Given as milliseconds since 1970. |

Returns a `<subsonic-response>` element with a nested `<shares>` element on success, which in turns contains a single `<share>` element for the newly created share. [Example](http://subsonic.org/pages/inc/api/examples/shares_example_1.xml).


---
### updateShare

`http://your-server/rest/updateShare` Since [1.6.0](../subsonic-versions)

Updates the description and/or expiration date for an existing share.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of the share to update. |
| `description` | No  |     | A user-defined description that will be displayed to people visiting the shared media. |
| `expires` | No  |     | The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration. |

Returns an empty `<subsonic-response>` element on success.


---
### deleteShare

`http://your-server/rest/deleteShare` Since [1.6.0](../subsonic-versions)

Deletes an existing share.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of the share to delete. |

Returns an empty `<subsonic-response>` element on success.


---
### getPodcasts

`http://your-server/rest/getPodcasts` Since [1.6.0](../subsonic-versions)

Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the `id` parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `includeEpisodes` | No  | true | (Since [1.9.0](../subsonic-versions)) Whether to include Podcast episodes in the returned result. |
| `id` | No  |     | (Since [1.9.0](../subsonic-versions)) If specified, only return the Podcast channel with this ID. |

Returns a `<subsonic-response>` element with a nested `<podcasts>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/podcasts_example_1.xml).


---
### getNewestPodcasts

`http://your-server/rest/getNewestPodcasts` Since [1.13.0](../subsonic-versions)

Returns the most recently published Podcast episodes.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `count` | No  | 20  | The maximum number of episodes to return. |

Returns a `<subsonic-response>` element with a nested `<newestPodcasts>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/newest_podcasts_example_1.xml).


---
### refreshPodcasts

`http://your-server/rest/refreshPodcasts` Since [1.9.0](../subsonic-versions)

Requests the server to check for new Podcast episodes. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

Returns an empty `<subsonic-response>` element on success.


---
### createPodcastChannel

`http://your-server/rest/createPodcastChannel` Since [1.9.0](../subsonic-versions)

Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `url` | Yes |     | The URL of the Podcast to add. |

Returns an empty `<subsonic-response>` element on success.


---
### deletePodcastChannel

`http://your-server/rest/deletePodcastChannel` Since [1.9.0](../subsonic-versions)

Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the Podcast channel to delete. |

Returns an empty `<subsonic-response>` element on success.


---
### deletePodcastEpisode

`http://your-server/rest/deletePodcastEpisode` Since [1.9.0](../subsonic-versions)

Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the Podcast episode to delete. |

Returns an empty `<subsonic-response>` element on success.


---
### downloadPodcastEpisode

`http://your-server/rest/downloadPodcastEpisode` Since [1.9.0](../subsonic-versions)

Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID of the Podcast episode to download. |

Returns an empty `<subsonic-response>` element on success.


---
### jukeboxControl

`http://your-server/rest/jukeboxControl` Since [1.2.0](../subsonic-versions)

Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `action` | Yes |     | The operation to perform. Must be one of: `get`, `status` (since [1.7.0](../subsonic-versions)), `set` (since [1.7.0](../subsonic-versions)), `start`, `stop`, `skip`, `add`, `clear`, `remove`, `shuffle`, `setGain` |
| `index` | No  |     | Used by `skip` and `remove`. Zero-based index of the song to skip to or remove. |
| `offset` | No  |     | (Since [1.7.0](../subsonic-versions)) Used by `skip`. Start playing this many seconds into the track. |
| `id` | No  |     | Used by `add` and `set`. ID of song to add to the jukebox playlist. Use multiple `id` parameters to add many songs in the same request. (`set` is similar to a `clear` followed by a `add`, but will not change the currently playing track.) |
| `gain` | No  |     | Used by `setGain` to control the playback volume. A float value between 0.0 and 1.0. |

Returns a `<jukeboxStatus>` element on success, unless the `get` action is used, in which case a nested `<jukeboxPlaylist>` element is returned. [Example 1](http://subsonic.org/pages/inc/api/examples/jukeboxStatus_example_1.xml). [Example 2](http://subsonic.org/pages/inc/api/examples/jukeboxPlaylist_example_1.xml).


---
### getInternetRadioStations

`http://your-server/rest/getInternetRadioStations` Since [1.9.0](../subsonic-versions)

Returns all internet radio stations. Takes no extra parameters.

Returns a `<subsonic-response>` element with a nested `<internetRadioStations>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/internetRadioStations_example_1.xml).


---
### createInternetRadioStation

`http://your-server/rest/createInternetRadioStation` Since [1.16.0](../subsonic-versions)

Adds a new internet radio station. Only users with admin privileges are allowed to call this method.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `streamUrl` | Yes |     | The stream URL for the station. |
| `name` | Yes |     | The user-defined name for the station. |
| `homepageUrl` | No  |     | The home page URL for the station. |

Returns an empty `<subsonic-response>` element on success.


---
### updateInternetRadioStation

`http://your-server/rest/updateInternetRadioStation` Since [1.16.0](../subsonic-versions)

Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID for the station. |
| `streamUrl` | Yes |     | The stream URL for the station. |
| `name` | Yes |     | The user-defined name for the station. |
| `homepageUrl` | No  |     | The home page URL for the station. |

Returns an empty `<subsonic-response>` element on success.


---
### deleteInternetRadioStation

`http://your-server/rest/deleteInternetRadioStation` Since [1.16.0](../subsonic-versions)

Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | The ID for the station. |

Returns an empty `<subsonic-response>` element on success.


---
### getChatMessages

`http://your-server/rest/getChatMessages` Since [1.2.0](../subsonic-versions)

Returns the current visible (non-expired) chat messages.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `since` | No  |     | Only return messages newer than this time (in millis since Jan 1 1970). |

Returns a `<subsonic-response>` element with a nested `<chatMessages>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/chatMessages_example_1.xml).


---
### addChatMessage

`http://your-server/rest/addChatMessage` Since [1.2.0](../subsonic-versions)

Adds a message to the chat log.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `message` | Yes |     | The chat message. |

Returns an empty `<subsonic-response>` element on success.


---
### getUser

`http://your-server/rest/getUser` Since [1.3.0](../subsonic-versions)

Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges. |

Returns a `<subsonic-response>` element with a nested `<user>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/user_example_1.xml).


---
### getUsers

`http://your-server/rest/getUsers` Since [1.8.0](../subsonic-versions)

Get details about all users, including which authorization roles and folder access they have. Only users with admin privileges are allowed to call this method.

Returns a `<subsonic-response>` element with a nested `<users>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/users_example_1.xml).


---
### createUser

`http://your-server/rest/createUser` Since [1.1.0](../subsonic-versions)

Creates a new user on the server, using the following parameters:

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the new user. |
| `password` | Yes |     | The password of the new user, either in clear text of hex-encoded (see above). |
| `email` | Yes |     | The email address of the new user. |
| `ldapAuthenticated` | No  | false | Whether the user is authenicated in LDAP. |
| `adminRole` | No  | false | Whether the user is administrator. |
| `settingsRole` | No  | true | Whether the user is allowed to change personal settings and password. |
| `streamRole` | No  | true | Whether the user is allowed to play files. |
| `jukeboxRole` | No  | false | Whether the user is allowed to play files in jukebox mode. |
| `downloadRole` | No  | false | Whether the user is allowed to download files. |
| `uploadRole` | No  | false | Whether the user is allowed to upload files. |
| `playlistRole` | No  | false | Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect. |
| `coverArtRole` | No  | false | Whether the user is allowed to change cover art and tags. |
| `commentRole` | No  | false | Whether the user is allowed to create and edit comments and ratings. |
| `podcastRole` | No  | false | Whether the user is allowed to administrate Podcasts. |
| `shareRole` | No  | false | (Since [1.8.0](../subsonic-versions)) Whether the user is allowed to share files with anyone. |
| `videoConversionRole` | No  | false | (Since [1.15.0](../subsonic-versions)) Whether the user is allowed to start video conversions. |
| `musicFolderId` | No  | All folders | (Since [1.12.0](../subsonic-versions)) IDs of the music folders the user is allowed access to. Include the parameter once for each folder. |

Returns an empty `<subsonic-response>` element on success.


---
### updateUser

`http://your-server/rest/updateUser` Since [1.10.1](../subsonic-versions)

Modifies an existing user on the server, using the following parameters:

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the user. |
| `password` | No  |     | The password of the user, either in clear text of hex-encoded (see above). |
| `email` | No  |     | The email address of the user. |
| `ldapAuthenticated` | No  |     | Whether the user is authenicated in LDAP. |
| `adminRole` | No  |     | Whether the user is administrator. |
| `settingsRole` | No  |     | Whether the user is allowed to change personal settings and password. |
| `streamRole` | No  |     | Whether the user is allowed to play files. |
| `jukeboxRole` | No  |     | Whether the user is allowed to play files in jukebox mode. |
| `downloadRole` | No  |     | Whether the user is allowed to download files. |
| `uploadRole` | No  |     | Whether the user is allowed to upload files. |
| `coverArtRole` | No  |     | Whether the user is allowed to change cover art and tags. |
| `commentRole` | No  |     | Whether the user is allowed to create and edit comments and ratings. |
| `podcastRole` | No  |     | Whether the user is allowed to administrate Podcasts. |
| `shareRole` | No  |     | Whether the user is allowed to share files with anyone. |
| `videoConversionRole` | No  | false | (Since [1.15.0](../subsonic-versions)) Whether the user is allowed to start video conversions. |
| `musicFolderId` | No  |     | (Since [1.12.0](../subsonic-versions)) IDs of the music folders the user is allowed access to. Include the parameter once for each folder. |
| `maxBitRate` | No  |     | (Since [1.13.0](../subsonic-versions)) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320. |

Returns an empty `<subsonic-response>` element on success.


---
### deleteUser

`http://your-server/rest/deleteUser` Since [1.3.0](../subsonic-versions)

Deletes an existing user on the server, using the following parameters:

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the user to delete. |

Returns an empty `<subsonic-response>` element on success.


---
### changePassword

`http://your-server/rest/changePassword` Since [1.1.0](../subsonic-versions)

Changes the password of an existing user on the server, using the following parameters. You can only change your own password unless you have admin privileges.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `username` | Yes |     | The name of the user which should change its password. |
| `password` | Yes |     | The new password of the new user, either in clear text of hex-encoded (see above). |

Returns an empty `<subsonic-response>` element on success.


---
### getBookmarks

`http://your-server/rest/getBookmarks` Since [1.9.0](../subsonic-versions)

Returns all bookmarks for this user. A bookmark is a position within a certain media file.

Returns a `<subsonic-response>` element with a nested `<bookmarks>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/bookmarks_example_1.xml).


---
### createBookmark

`http://your-server/rest/createBookmark` Since [1.9.0](../subsonic-versions)

Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten. |
| `position` | Yes |     | The position (in milliseconds) within the media file. |
| `comment` | No  |     | A user-defined comment. |

Returns an empty `<subsonic-response>` element on success.


---
### deleteBookmark

`http://your-server/rest/deleteBookmark` Since [1.9.0](../subsonic-versions)

Deletes the bookmark for a given file.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected. |

Returns an empty `<subsonic-response>` element on success.


---
### getPlayQueue

`http://your-server/rest/getPlayQueue` Since [1.12.0](../subsonic-versions)

Returns the state of the play queue for this user (as set by `savePlayQueue`). This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

Returns a `<subsonic-response>` element with a nested `<playQueue>` element on success, or an empty `<subsonic-response>` if no play queue has been saved. [Example](http://subsonic.org/pages/inc/api/examples/playQueue_example_1.xml).


---
### savePlayQueue

`http://your-server/rest/savePlayQueue` Since [1.12.0](../subsonic-versions)

Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of a song in the play queue. Use one `id` parameter for each song in the play queue. |
| `current` | No  |     | The ID of the current playing song. |
| `position` | No  |     | The position in milliseconds within the currently playing song. |

Returns an empty `<subsonic-response>` element on success.


---
### getScanStatus

`http://your-server/rest/getScanStatus` Since [1.15.0](../subsonic-versions)

Returns the current status for media library scanning. Takes no extra parameters.

Returns a `<subsonic-response>` element with a nested `<scanStatus>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/scanStatus_example_1.xml).


---
### startScan

`http://your-server/rest/startScan` Since [1.15.0](../subsonic-versions)

Initiates a rescan of the media libraries. Takes no extra parameters.

Returns a `<subsonic-response>` element with a nested `<scanStatus>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/scanStatus_example_1.xml).
