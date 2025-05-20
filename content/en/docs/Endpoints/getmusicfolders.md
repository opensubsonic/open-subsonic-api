---
title: "getMusicFolders"
linkTitle: "getMusicFolders"
categories:
- Browsing
description: >
  Returns all configured top-level music folders.
---

`http://your-server/rest/getMusicFolders` Since [1.0.0](../../subsonic-versions)

Returns all configured top-level music folders. Takes no extra parameters.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getMusicFolders.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`musicFolders`](../../responses/musicfolders) element on success.

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
    "musicFolders": {
      "musicFolder": [
        {
          "id": 1,
          "name": "music"
        },
        {
          "id": 4,
          "name": "upload"
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
    "musicFolders": {
      "musicFolder": [
        {
          "id": 1,
          "name": "music"
        },
        {
          "id": 4,
          "name": "upload"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `musicFolders` | [`musicFolders`](../../responses/musicfolders) | **Yes** |   | The directory content |
