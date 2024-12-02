---
title: "getNewestPodcasts"
linkTitle: "getNewestPodcasts [OS]"
categories:
- Podcast
description: >
    Returns the most recently published Podcast episodes.
---

`http://your-server/rest/getNewestPodcasts` Since [1.13.0](../../subsonic-versions)

Returns the most recently published Podcast episodes.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `count` | No  |  | 20  | The maximum number of episodes to return. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getNewestPodcasts.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`newestPodcasts`](../../responses/newestpodcasts) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
   "subsonic-response" : {
      "status" : "ok",
      "version" : "1.16.1",
      "newestPodcasts" : {
         "totalCount": 2,
         "episode" : [ {
            "id" : "19",
            "parent" : "78",
            "isDir" : false,
            "title" : "Maria James inquest finding",
            "album" : "Trace",
            "artist" : "Podcast",
            "coverArt" : "78",
            "size" : 26734080,
            "contentType" : "audio/mpeg",
            "suffix" : "mp3",
            "duration" : 1113,
            "bitRate" : 192,
            "playCount" : 0,
            "created" : "2023-03-16T01:02:36.481Z",
            "type" : "podcast",
            "streamId" : "80",
            "channelId" : "2",
            "description" : "A Victorian Coroner has failed to name a killer in the 1980 cold case of Maria James. Her sons are devasted. But there's still hope, in leads yet to be chased by police.",
            "status" : "completed",
            "publishDate" : "2022-04-01T02:30:00.000Z"
         }, {
            "id" : "1",
            "parent" : "74",
            "isDir" : false,
            "title" : "DEVIN TOWNSEND PODCAST #18 - NFT's! Good or bad? Devin discusses with A7X' Matt Shadows...",
            "album" : "Devin Townsend Podcast",
            "artist" : "Podcast",
            "coverArt" : "74",
            "size" : 70531702,
            "contentType" : "audio/mpeg",
            "suffix" : "mp3",
            "duration" : 4408,
            "bitRate" : 128,
            "playCount" : 0,
            "created" : "2023-03-16T00:56:16.783Z",
            "type" : "podcast",
            "streamId" : "76",
            "channelId" : "1",
            "description" : "People keep talking to me about NFTs...most people seem to hate them and hated that I was even mentioning them =). After I mentioned it on Twitter, Matt hit me up and offered to give me his perspective on them as his band is heavily involved. I watched videos sent to me about the downsides, and here is an example of the other side I suppose. This is just because I'm trying to wrap my head around it. I'm not planning to do NFTs, I just wanted to learn. Take with a grain of salt, and cheers to Matt for being a good sport =)",
            "status" : "completed",
            "publishDate" : "2022-02-01T12:00:45.000Z"
         } ]
      }
   }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
// TODO
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `newestPodcasts` | [`newestPodcasts`](../../responses/newestpodcasts) | **Yes** |     | The podcasts |
