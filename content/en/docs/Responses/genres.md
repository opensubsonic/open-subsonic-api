---
title: "genres"
linkTitle: "genres"
description: >
  Genres list.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
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
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `genre` | Array of [`genre`](../genre) | No |   | List of genre |
