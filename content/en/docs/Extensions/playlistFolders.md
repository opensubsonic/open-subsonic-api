---
title: "Playlist Folders"
linkTitle: "Playlist Folders"
OpenSubsonic:
  - Extension
description: >
  Adds private, per-user folders and nested folders for organizing playlists.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `playlistFolders` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server supports this extension, each user can organize the playlists available to them in ordered folders of arbitrary depth, as in iTunes/Apple Music, Spotify, or Rekordbox. Existing clients remain compatible because [`getPlaylists`](../../endpoints/getplaylists) continues to return every visible playlist as a flat list.

## Version 1

This extension requires the following endpoints:

- [`createPlaylistFolder`](../../endpoints/createplaylistfolder) creates a folder.
- [`deletePlaylistFolder`](../../endpoints/deleteplaylistfolder) deletes an empty folder.
- [`getPlaylistFolders`](../../endpoints/getplaylistfolders) returns all of the selected user's folders.
- [`movePlaylist`](../../endpoints/moveplaylist) places playlists in a folder or at the root and sets their position.
- [`updatePlaylistFolder`](../../endpoints/updateplaylistfolder) renames, moves, or reorders a folder.

It also adds `playlistFolderId` and `playlistFolderSortOrder` to the [`playlist`](../../responses/playlist) response.

### Hierarchy and user scope

[`getPlaylistFolders`](../../endpoints/getplaylistfolders) returns a flat list. A folder's optional `parentId` identifies its parent; no `parentId` means that the folder is at the root. This representation supports arbitrary nesting without recursive responses. Clients reconstruct the full tree from two requests: [`getPlaylistFolders`](../../endpoints/getplaylistfolders) for the folders and [`getPlaylists`](../../endpoints/getplaylists) for the playlists, using each playlist's `playlistFolderId`.

A user's folder tree is private to that user, and folder placement is independent of playlist ownership. A user can place any playlist visible to them — including a public or shared playlist owned by another user, or a `readonly` one — without modifying the playlist itself. Different users can place the same playlist in different folders; within one user's tree a playlist has at most one placement. Folder names do not have to be unique.

The selected user is the authenticated user, or the user named by the admin-only `username` parameter on [`getPlaylists`](../../endpoints/getplaylists) and [`getPlaylistFolders`](../../endpoints/getplaylistfolders). Servers must never expose one user's folders or placements to another user.

### Ordering

Sibling items — the child folders and playlists sharing one parent, or the folders and playlists at the root — share a single ordering space. `sortOrder` values are client-assigned integers that servers store without normalization; duplicates are allowed. Clients should sort siblings by `sortOrder` ascending, breaking ties by name, and place items without a value after ordered ones. This lets clients reproduce manually ordered trees from apps like iTunes and Rekordbox exactly.

### Placement lifecycle and deletion

A placement exists only while its playlist is visible to the user: when a playlist is deleted or stops being visible, its placement in every affected user's tree ceases to exist. Folder emptiness is evaluated over child folders and currently visible playlists. Folders can only be deleted when empty; servers must not implicitly delete or move a folder's contents.

An omitted `parentId` on [`updatePlaylistFolder`](../../endpoints/updateplaylistfolder) leaves the folder's parent unchanged, while an explicitly empty value moves the folder to the root. The `playlistFolderId` parameter of [`movePlaylist`](../../endpoints/moveplaylist) behaves the same way. Servers must distinguish an empty parameter value from an absent parameter.

### Error handling

- A folder ID (including `parentId`) that does not exist or belongs to another user's tree returns error `70`, indistinguishable from not-found, so that folder IDs cannot be probed across users.
- A `playlistId` that does not exist or is not visible to the authenticated user returns error `70`.
- A move that would create a cycle, or deleting a non-empty folder, returns error `0`.
- Calling [`updatePlaylistFolder`](../../endpoints/updateplaylistfolder) or [`movePlaylist`](../../endpoints/moveplaylist) without any of their optional parameters returns error `10`.

### Backward compatibility

Clients that do not support this extension can keep using the existing playlist endpoints. They receive the same complete flat playlist list and can ignore the new fields.
