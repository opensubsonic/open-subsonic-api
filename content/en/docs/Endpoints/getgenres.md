---
title: "getGenres"
linkTitle: "getGenres"
categories:
- Browsing
description: >
  Returns all genres.
---

`http://your-server/rest/getGenres` Since [1.9.0](../../subsonic-versions)

Returns all genres.

### Parameters

Takes no extra parameters, unless the server supports the [Music Folder](../../extensions/musicfolder) extension, in which case the following parameter is supported.

| Parameter | Req. | OpenS. | Default | Comment |
| `musicFolderId` | No| **Yes**   |     | Include only genres for which at least one song in the specified music folder is tagged with that genre. Servers **should** calculate and return `songCount` and `albumCount` relative to the specified music folder only. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getGenres.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`genres`](../../responses/genres) element on success.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "type": "AwesomeServerName",
    "serverVersion": "0.1.3 (tag)",
    "openSubsonic": true,
    "genres": {
      "genre": [
        {
          "songCount": 1,
          "albumCount": 1,
          "value": "Punk"
        },
        {
          "songCount": 4,
          "albumCount": 1,
          "value": "Dark Ambient"
        },
        {
          "songCount": 6,
          "albumCount": 1,
          "value": "Noise"
        },
        {
          "songCount": 11,
          "albumCount": 1,
          "value": "Electronica"
        },
        {
          "songCount": 11,
          "albumCount": 1,
          "value": "Dance"
        },
        {
          "songCount": 12,
          "albumCount": 1,
          "value": "Electronic"
        },
        {
          "songCount": 20,
          "albumCount": 1,
          "value": "Hip-Hop"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "genres": {
      "genre": [
        {
          "songCount": 1,
          "albumCount": 1,
          "value": "Punk"
        },
        {
          "songCount": 4,
          "albumCount": 1,
          "value": "Dark Ambient"
        },
        {
          "songCount": 6,
          "albumCount": 1,
          "value": "Noise"
        },
        {
          "songCount": 11,
          "albumCount": 1,
          "value": "Electronica"
        },
        {
          "songCount": 11,
          "albumCount": 1,
          "value": "Dance"
        },
        {
          "songCount": 12,
          "albumCount": 1,
          "value": "Electronic"
        },
        {
          "songCount": 20,
          "albumCount": 1,
          "value": "Hip-Hop"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `genres` | [`genres`](../../responses/genres) | **Yes** |   | The genre list |
