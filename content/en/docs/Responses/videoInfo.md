---
title: "videoInfo"
linkTitle: "videoInfo"
description: >
  videoInfo.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "id": "vi-1",
  "captions": [
    { "id": "0", "name": "Planes 2.srt" }
  ],
  "audioTrack": [
    { "id": "1", "name": "English", "languageCode": "eng" },
    { "id": "3", "name": "Danish", "languageCode": "dan" },
    { "id": "4", "name": "Finnish", "languageCode": "fin" },
    { "id": "5", "name": "Norwegian", "languageCode": "nor" },
    { "id": "6", "name": "Swedish", "languageCode": "swe" }
  ],
  "conversion": [
    { "id": "37", "bitRate": 1000, "audioTrackId": 1 }
  ]
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "id" : "7058",
  "captions" : [
    { "id" : "0", "name" : "Planes 2.srt" }
  ],
  "audioTrack" : [
    { "id" : "1", "name" : "English", "languageCode" : "eng" },
    { "id" : "3", "name" : "Danish", "languageCode" : "dan" },
    { "id" : "4", "name" : "Finnish", "languageCode" : "fin" },
    { "id" : "5", "name" : "Norwegian", "languageCode" : "nor" },
    { "id" : "6", "name" : "Swedish", "languageCode" : "swe" }
  ],
  "conversion" : [
    { "id" : "37", "bitRate" : 1000, "audioTrackId" : 1 }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| ----- | ---- | ---- | ------ | ------- |
| `id` | string | **Yes** | | The ID of the video file |
| `captions` | Array of [`Captions`](../captions) | | | |
| `audioTrack` | Array of [`AudioTrack`](../audioTrack) | | | |
| `conversion` | Array of [`VideoConversion`](../videoConversion) | | | |
