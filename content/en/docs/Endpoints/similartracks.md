---
title: "similarTracks"
linkTitle: "similarTracks [OS]"
categories:
- Browsing
OpenSubsonic:
- Addition
description: >
  Returns similar tracks based on audio analysis.
---

`http://your-server/rest/similarTracks`

Returns a list of tracks that are similar to the given track, using audio embedding similarity. Supports filtering by album, deduplication, and radius-based similarity.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `itemId` | **Yes** | | | The ID of the track to find similar tracks for. |
| `n` | No | | 10 | The maximum number of similar tracks to return. |
| `eliminateDuplicates` | No | | true | Whether to eliminate duplicate tracks from the results. |
| `radiusSimilarity` | No | | true | Whether to use radius-based similarity search. |
| `album` | No | | | Filter results by album name. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/similarTracks.view?itemId=abc123&n=10&eliminateDuplicates=true&radiusSimilarity=true&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`similarTracksResult`](../../responses/similartracksresult) element on success.

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
    "similarTracksResult": {
      "track": [
        {
          "itemId": "362b9d2b5905260e2a8185610583314c",
          "title": "Song Title A",
          "album": "Album A",
          "author": "Artist A",
          "distance": 0.010419189929962158
        },
        {
          "itemId": "7c6f860f7e8f664713a07a735c93427a",
          "title": "Song Title B",
          "album": "Album B",
          "author": "Artist B",
          "distance": 0.01155698299407959
        },
        {
          "itemId": "67b7ed96b90dbbcdd105f3712697cc5e",
          "title": "Song Title C",
          "album": "Album C",
          "author": "Artist C",
          "distance": 0.013168931007385254
        },
        {
          "itemId": "091c163639e06077b6ca80d559aeab89",
          "title": "Song Title D",
          "album": "Album D",
          "author": "Artist D",
          "distance": 0.01780802011489868
        },
        {
          "itemId": "a82b3db1210f468aadc1c9b2eac76ade",
          "title": "Song Title E",
          "album": "Album E",
          "author": "Artist E",
          "distance": 0.01776278018951416
        },
        {
          "itemId": "f7f8e7b566642cbc805853368afcbbf3",
          "title": "Song Title F",
          "album": "Album F",
          "author": "Artist F",
          "distance": 0.01663869619369507
        },
        {
          "itemId": "82db5a81f183a8c2aef9315f3decae8c",
          "title": "Song Title G",
          "album": "Album G",
          "author": "Artist G",
          "distance": 0.019054651260375977
        },
        {
          "itemId": "2b5ccd6f8f172d0c2cc45056c85a9553",
          "title": "Song Title H",
          "album": "Album H",
          "author": "Artist H",
          "distance": 0.015343427658081055
        },
        {
          "itemId": "6666509446da53943df8f40c2cdccba9",
          "title": "Song Title I",
          "album": "Album I",
          "author": "Artist I",
          "distance": 0.02010512351989746
        },
        {
          "itemId": "29a533add9b2fb05063bee30e45f96c0",
          "title": "Song Title J",
          "album": "Album J",
          "author": "Artist J",
          "distance": 0.019347667694091797
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `similarTracksResult` | [`similarTracksResult`](../../responses/similartracksresult) | **Yes** | | The similar tracks result |
