---
title: "ClientInfo"
linkTitle: "ClientInfo [OS]"
opensubsonic:
- Extension
description: >
  Contains information about the client's capabilities.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "name": "Play:1",
  "platform": "Sonos",
  "maxAudioBitrate": 512000,
  "maxTranscodingAudioBitrate": 256000,
  "directPlayProfiles": [
  {
"container": "mp3",
"audioCodec": "mp3",
"protocol": "http",
"maxAudioChannels": 2
  },
  {
"container": "flac",
"audioCodec": "flac",
"protocol": "*",
"maxAudioChannels": 2
  }
  ,
  {
"container": "mp4",
"audioCodec": "flac,aac,alac",
"protocol": "*",
"maxAudioChannels": 2
  }
  ],
  "transcodingProfiles": [
  {
"container": "mp3",
"audioCodec": "mp3",
"protocol": "http",
"maxAudioChannels": 2
  },
  {
"container": "flac",
"audioCodec": "flac",
"protocol": "*",
"maxAudioChannels": 2
  }
  ],
  "codecProfiles": [
    {
      "type": "AudioCodec",
      "name": "mp3",
      "limitations": [
        { "name": "audioBitrate", "comparison": "LessThanEqual", "value": "320000", "required": true }
      ]
    },
    {
      "type": "AudioCodec",
      "name": "flac",
      "limitations": [
        { "name": "audioSamplerate", "comparison": "LessThanEqual", "value": "192000", "required": false },
        { "name": "audioChannels",  "comparison": "LessThanEqual", "value": "2",      "required": false }
      ]
    }
  ]
}
{{< /tab >}}
{{< /tabpane >}}

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `name` | string | **Yes** | **Yes** | The name of the client device. |
| `platform` | string | **Yes** | **Yes** | The platform of the client (e.g., Android, iOS). |
| `maxAudioBitrate` | integer | No | **Yes** | The maximum audio bitrate the client can handle. |
| `maxTranscodingAudioBitrate` | integer | No | **Yes** | The maximum audio bitrate for transcoded content. |
| `directPlayProfiles` | [DirectPlayProfile[]](../responses/directplayprofile) | No | **Yes** | A list of profiles for direct playback. |
| `transcodingProfiles` | [TranscodingProfile[]](../responses/transcodingprofile) | No | **Yes** | A list of profiles for transcoding. The server should evaluate these in the order they are listed, as a priority list. |
| `codecProfiles` | [CodecProfile[]](../responses/codecprofile) | No | **Yes** | A list of codec-specific profiles. |
