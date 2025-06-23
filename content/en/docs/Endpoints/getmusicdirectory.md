---
title: "getMusicDirectory"
linkTitle: "getMusicDirectory"
categories:
- Browsing
description: >
  Returns a listing of all files in a music directory.
---

`http://your-server/rest/getMusicDirectory` Since [1.0.0](../../subsonic-versions)

Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |   |   | A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getMusicDirectory.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`directory`](../../responses/directory) element on success.

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
    "directory": {
      "id": "1",
      "name": "music",
      "child": [
        {
          "id": "100000016",
          "parent": "1",
          "isDir": true,
          "title": "CARNÚN",
          "artist": "CARNÚN",
          "coverArt": "ar-100000016"
        },
        {
          "id": "100000027",
          "parent": "1",
          "isDir": true,
          "title": "Chi.Otic",
          "artist": "Chi.Otic",
          "coverArt": "ar-100000027"
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
    "directory": {
      "id": "1",
      "name": "music",
      "child": [
        {
          "id": "100000016",
          "parent": "1",
          "isDir": true,
          "title": "CARNÚN",
          "artist": "CARNÚN",
          "coverArt": "ar-100000016"
        },
        {
          "id": "100000027",
          "parent": "1",
          "isDir": true,
          "title": "Chi.Otic",
          "artist": "Chi.Otic",
          "coverArt": "ar-100000027"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `directory` | [`directory`](../../responses/directory) | **Yes** |   | The directory content |
