---
title: "OpenSubsonic API"
linkTitle: "OpenSubsonic API"
date: 2017-01-06
weight: 2
description: >
    The OpenSubsonic API allows anyone to build their own programs using a compatible server, whether they're on the web, the desktop or on mobile devices. All the OpenSubsonic-compatible apps (clients and servers) are built using the OpenSubsonic API.
---

Feel free to join the [OpenSubsonic](https://github.com/opensubsonic/open-subsonic-api/discussions) forum for discussions, suggestions and questions.

## Introduction

The OpenSubsonic API allows you to call methods that respond in [REST](http://en.wikipedia.org/wiki/Representational_State_Transfer) style xml or json. Since most clients now only rely on json, this documentation only shows the json answers in the documentation.

This project is built upon the original [Subsonic API](https://www.subsonic.org/pages/api.jsp)

Since the original project is now abandonned, a group of Subsonic clients and servers associated to expand and fix the original API.

This is done by:

- improving documentation to fill some gaps that could have lead some servers to build different implementations.
- simple non breaking extensions to the API.
- adding new well documented endpoints.
- try to ensure that clients still support legacy Subsonic servers.

See [API Reference](../api-reference) for the basic API documentation. (Mandatory parameters, authentication, error handling, ...)

## File structure vs ID3 tags

Starting with version [1.8.0](../subsonic-versions), the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.

For instance, browsing through the collection using ID3 tags should use the `getArtists`, `getArtist` and `getAlbum` methods. To browse using file structure you would use `getIndexes` and `getMusicDirectory`.

Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.

## API methods

|     |     |
| --- | --- |
| System | [`ping`](../endpoints/ping) [`getLicense`](../endpoints/getlicense) |
| Browsing | [`getMusicFolders`](../endpoints/getmusicfolders) [`getIndexes`](../endpoints/getindexes) [`getMusicDirectory`](../endpoints/getmusicdirectory) [`getGenres`](../endpoints/getgenres) [`getArtists`](../endpoints/getartists) [`getArtist`](../endpoints/getartist) [`getAlbum`](../endpoints/getalbum) [`getSong`](../endpoints/getsong) [`getVideos`](../endpoints/getvideos) [`getVideoInfo`](../endpoints/getvideoinfo) [`getArtistInfo`](../endpoints/getartistinfo) [`getArtistInfo2`](../endpoints/getartistinfo2) [`getAlbumInfo`](../endpoints/getalbuminfo) [`getAlbumInfo2`](../endpoints/getalbuminfo2) [`getSimilarSongs`](../endpoints/getsimilarsongs) [`getSimilarSongs2`](../endpoints/getsimilarsongs2) [`getTopSongs`](../endpoints/gettopsongs) |
| Album/song lists | [`getAlbumList`](../endpoints/getalbumlist) [`getAlbumList2`](../endpoints/getalbumlist2) [`getRandomSongs`](../endpoints/getrandomsongs) [`getSongsByGenre`](../endpoints/getsongsbygenre) [`getNowPlaying`](../endpoints/getnowplaying) [`getStarred`](../endpoints/getstarred) [`getStarred2`](../endpoints/getstarred2) |
| Searching | [`search`](../endpoints/search) [`search2`](../endpoints/search2) [`search3`](../endpoints/search3) |
| Playlists | [`getPlaylists`](../endpoints/getplaylists) [`getPlaylist`](../endpoints/getplaylist) [`createPlaylist`](../endpoints/createplaylist) [`updatePlaylist`](../endpoints/updateplaylist) [`deletePlaylist`](../endpoints/deleteplaylist) |
| Media retrieval | [`stream`](../endpoints/stream) [`download`](../endpoints/download) [`hls`](../endpoints/hls) [`getCaptions`](../endpoints/getcaptions) [`getCoverArt`](../endpoints/getcoverart) [`getLyrics`](../endpoints/getlyrics) [`getAvatar`](../endpoints/getavatar) |
| Media annotation | [`star`](../endpoints/star) [`unstar`](../endpoints/unstar) [`setRating`](../endpoints/setrating) [`scrobble`](../endpoints/scrobble) |
| Sharing | [`getShares`](../endpoints/getshares) [`createShare`](../endpoints/createshare) [`updateShare`](../endpoints/updateshare) [`deleteShare`](../endpoints/deleteshare) |
| Podcast | [`getPodcasts`](../endpoints/getpodcasts) [`getNewestPodcasts`](../endpoints/getnewestpodcasts) [`refreshPodcasts`](../endpoints/refreshpodcasts) [`createPodcastChannel`](../endpoints/createpodcastchannel) [`deletePodcastChannel`](../endpoints/deletepodcastchannel) [`deletePodcastEpisode`](../endpoints/deletepodcastepisode) [`downloadPodcastEpisode`](../endpoints/downloadpodcastepisode) |
| Jukebox | [`jukeboxControl`](../endpoints/jukeboxcontrol) |
| Internet radio | [`getInternetRadioStations`](../endpoints/getinternetradiostations) [`createInternetRadioStation`](../endpoints/createinternetradiostation) [`updateInternetRadioStation`](../endpoints/updateinternetradiostation) [`deleteInternetRadioStation`](../endpoints/deleteinternetradiostation) |
| Chat | [`getChatMessages`](../endpoints/getchatmessages) [`addChatMessage`](../endpoints/addchatmessage) |
| User management | [`getUser`](../endpoints/getuser) [`getUsers`](../endpoints/getusers) [`createUser`](../endpoints/createuser) [`updateUser`](../endpoints/updateuser) [`deleteUser`](../endpoints/deleteuser) [`changePassword`](../endpoints/changepassword) |
| Bookmarks | [`getBookmarks`](../endpoints/getbookmarks) [`createBookmark`](../endpoints/createbookmark) [`deleteBookmark`](../endpoints/deletebookmark) [`getPlayQueue`](../endpoints/getplayqueue) [`savePlayQueue`](../endpoints/saveplayqueue) |
| Media library scanning | [`getScanStatus`](../endpoints/getscanstatus) [`startScan`](../endpoints/startscan) |
