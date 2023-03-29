---
title: "createShare"
linkTitle: "z createShare"
description: >
    Creates a public URL that can be used by anyone to stream music or video from the server.
---

## TODO

`http://your-server/rest/createShare` Since [1.6.0](../subsonic-versions)

Creates a public URL that can be used by anyone to stream music or video from the server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `id` | Yes |     | ID of a song, album or video to share. Use one `id` parameter for each entry to share. |
| `description` | No  |     | A user-defined description that will be displayed to people visiting the shared media. |
| `expires` | No  |     | The time at which the share expires. Given as milliseconds since 1970. |

Returns a `<subsonic-response>` element with a nested `<shares>` element on success, which in turns contains a single `<share>` element for the newly created share. [Example](http://subsonic.org/pages/inc/api/examples/shares_example_1.xml).
