---
title: "playlists"
linkTitle: "playlists"
description: >
  Playlists.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "playlist": [
    {
      "id": "800000003",
      "name": "random - admin - private (admin)",
      "owner": "admin",
      "public": false,
      "created": "2021-02-23T04:35:38+00:00",
      "changed": "2021-02-23T04:35:38+00:00",
      "songCount": 43,
      "duration": 17875
    },
    {
      "id": "800000002",
      "name": "random - admin - public (admin)",
      "owner": "admin",
      "public": true,
      "created": "2021-02-23T04:34:56+00:00",
      "changed": "2021-02-23T04:34:56+00:00",
      "songCount": 43,
      "duration": 17786
    }
  ]
}{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "playlist": [
    {
      "id": "800000003",
      "name": "random - admin - private (admin)",
      "owner": "admin",
      "public": false,
      "created": "2021-02-23T04:35:38+00:00",
      "changed": "2021-02-23T04:35:38+00:00",
      "songCount": 43,
      "duration": 17875
    },
    {
      "id": "800000002",
      "name": "random - admin - public (admin)",
      "owner": "admin",
      "public": true,
      "created": "2021-02-23T04:34:56+00:00",
      "changed": "2021-02-23T04:34:56+00:00",
      "songCount": 43,
      "duration": 17786
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `playlist` | Array of [`playlist`](../playlist) | No |     | A list of playlist |
