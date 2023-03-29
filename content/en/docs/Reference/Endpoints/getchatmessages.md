---
title: "getChatMessages"
linkTitle: "z getChatMessages"
description: >
    Returns the current visible (non-expired) chat messages.
---

## TODO

`http://your-server/rest/getChatMessages` Since [1.2.0](../subsonic-versions)

Returns the current visible (non-expired) chat messages.

| Parameter | Required | Default | Comment |
| --- | --- | --- | --- |
| `since` | No  |     | Only return messages newer than this time (in millis since Jan 1 1970). |

Returns a `<subsonic-response>` element with a nested `<chatMessages>` element on success. [Example](http://subsonic.org/pages/inc/api/examples/chatMessages_example_1.xml).

