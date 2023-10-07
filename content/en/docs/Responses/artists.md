---
title: "artists"
linkTitle: "artists"
description: >
  Artist list.
---

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "ignoredArticles": "The An A Die Das Ein Eine Les Le La",
  "index": [
    {
      "name": "C",
      "artist": [
        {
          "id": "100000016",
          "name": "CARNÚN",
          "coverArt": "ar-100000016",
          "albumCount": 1
        },
        {
          "id": "100000027",
          "name": "Chi.Otic",
          "coverArt": "ar-100000027",
          "albumCount": 0
        }
      ]
    },
    {
      "name": "I",
      "artist": [
        {
          "id": "100000013",
          "name": "IOK-1",
          "coverArt": "ar-100000013",
          "albumCount": 1
        }
      ]
    }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "ignoredArticles": "The An A Die Das Ein Eine Les Le La",
  "index": [
    {
      "name": "C",
      "artist": [
        {
          "id": "100000016",
          "name": "CARNÚN",
          "coverArt": "ar-100000016",
          "albumCount": 1
        },
        {
          "id": "100000027",
          "name": "Chi.Otic",
          "coverArt": "ar-100000027",
          "albumCount": 0
        }
      ]
    },
    {
      "name": "I",
      "artist": [
        {
          "id": "100000013",
          "name": "IOK-1",
          "coverArt": "ar-100000013",
          "albumCount": 1
        }
      ]
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `ignoredArticles` | `string` | **Yes** |   | The ignored articles |
| `index` | Array of [`IndexID3`](../indexid3) | No |   | Indexed artists|
