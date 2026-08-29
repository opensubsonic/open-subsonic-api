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

When a server supports this extension, each user can organize the playlists available to them in ordered folders of arbitrary depth, as in iTunes/Apple Music, Spotify, or Rekordbox. Existing clients remain compatible because the extension changes no existing response: [`getPlaylists`](../../endpoints/getplaylists) continues to return every visible playlist as a flat list with no extra fields.

## Version 1

This extension requires the following endpoints:

- [`createPlaylistFolder`](../../endpoints/createplaylistfolder) creates a folder.
- [`deletePlaylistFolder`](../../endpoints/deleteplaylistfolder) deletes a folder, releasing its contents.
- [`getPlaylistFolders`](../../endpoints/getplaylistfolders) returns all of the selected user's folders and playlist placements.
- [`movePlaylist`](../../endpoints/moveplaylist) files playlists in a folder or at the root and sets their position. Replaces all other placements.
- [`updatePlaylistFolder`](../../endpoints/updateplaylistfolder) renames, moves, or reorders a folder.
- [`addPlaylistToFolder`](../../endpoints/addplaylisttofolder) adds a single placement.
- [`removePlaylistFromFolder`](../../endpoints/removeplaylistfromfolder) removes a single placement.

It adds no fields to any existing response. The entire organization — folders and placements — is carried by the [`playlistFolders`](../../responses/playlistfolders) response.

### Placements

A **placement** files one playlist in one folder within one user's organization. A playlist may be placed in any number of folders, at most once per folder; `sortOrder` lives on the placement, so the same playlist can be ordered independently in each folder it appears in.

The root behaves as a folder identified by an empty ID: a placement with an empty or omitted `playlistFolderId` is an explicit root placement, and is what carries a playlist's position at the root. A playlist with no placements at all appears implicitly at the root, unordered — this is the automatic degrade path for servers, users, or clients that never touch folders.

Two styles of write are available. [`movePlaylist`](../../endpoints/moveplaylist) *sets* a playlist's only location: afterwards, its placements in the caller's tree are exactly the destination given, others are removed. [`addPlaylistToFolder`](../../endpoints/addplaylisttofolder) and [`removePlaylistFromFolder`](../../endpoints/removeplaylistfromfolder) *edit* individual placements. A client that only ever calls `movePlaylist` maintains a single-home tree and can ignore multi-placement entirely. NOTE: Client inheriting a multi-folder schema would immediately start eroding it upon moving playlists.

### Hierarchy and user scope

[`getPlaylistFolders`](../../endpoints/getplaylistfolders) returns a flat list. A folder's optional `parentId` identifies its parent; no `parentId` means that the folder is at the root. This representation supports arbitrary nesting without recursive responses. Clients reconstruct the full tree from two requests: [`getPlaylistFolders`](../../endpoints/getplaylistfolders) for the organization (folders and placements), and [`getPlaylists`](../../endpoints/getplaylists) for the playlists.

A user's folder tree is private to that user, and folder placement is independent of playlist ownership. A user can place any playlist visible to them — including a public or shared playlist owned by another user, or a `readonly` one — without modifying the playlist itself. Different users can place the same playlist in different folders. Folder names do not have to be unique.

The selected user is the authenticated user, or the user named by the admin-only `username` parameter on [`getPlaylists`](../../endpoints/getplaylists) and [`getPlaylistFolders`](../../endpoints/getplaylistfolders). Servers must never expose one user's folders or placements to another user.

### Ordering

Sibling items — the child folders and playlist placements sharing one parent, or the folders and root placements — share a single ordering space. `sortOrder` values are client-assigned integers that servers store without normalization; duplicates are allowed. Clients should sort siblings by `sortOrder` ascending, breaking ties by name, and place items without a value after ordered ones. This lets clients reproduce manually ordered trees from apps like iTunes and Rekordbox exactly.

### Placement lifecycle and deletion

A placement exists only while its playlist is visible to the user: when a playlist is deleted or stops being visible, all of that user's placements of it cease to exist.

Folders are an organizational schema laid over playlists, deleting a folder is a pure schema operation: the folder and the placements it held are removed, its child folders are re-parented to the deleted folder's parent, and the playlists themselves are untouched. A playlist placed nowhere else simply reappears at the implicit root.

An omitted `parentId` on [`updatePlaylistFolder`](../../endpoints/updateplaylistfolder) leaves the folder's parent unchanged, while an explicitly empty value moves the folder to the root. The `playlistFolderId` parameter of [`movePlaylist`](../../endpoints/moveplaylist) behaves the same way. Servers must distinguish an empty parameter value from an absent parameter.

### Error handling

- A folder ID (including `parentId`) that does not exist or belongs to another user's tree returns error `70`, indistinguishable from not-found, so that folder IDs cannot be probed across users.
- A `playlistId` that does not exist or is not visible to the authenticated user returns error `70`.
- A move that would create a cycle returns error `0`.
- Calling [`updatePlaylistFolder`](../../endpoints/updateplaylistfolder) or [`movePlaylist`](../../endpoints/moveplaylist) without any of their optional parameters returns error `10`.
- Removing a placement that does not exist is not an error ([`removePlaylistFromFolder`](../../endpoints/removeplaylistfromfolder) is idempotent).

### Backward compatibility

The extension is fully self-contained: no existing endpoint or response changes. Clients that do not support this extension keep using the existing playlist endpoints and receive the same complete flat playlist list as today.
