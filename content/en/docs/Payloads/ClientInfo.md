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
      "containers": [ "mp3" ],
      "audioCodecs": [ "mp3" ],
      "protocols": [ "http" ],
      "maxAudioChannels": 2
    },
    {
      "containers": [ "flac" ],
      "audioCodecs": [ "flac" ],
      "protocols": [],
      "maxAudioChannels": 2
    }
    ,
    {
      "containers": [ "mp4" ],
      "audioCodecs": [ "flac", "aac", "alac" ],
      "protocols": [],
      "maxAudioChannels": 2
    }
    ],
    "transcodingProfiles": [
    {
      "containers": "mp3",
      "audioCodecs": "mp3",
      "protocols": "http",
      "maxAudioChannels": 2
    },
    {
      "containers": "flac",
      "audioCodecs": "flac",
      "protocols": "*",
      "maxAudioChannels": 2
    }
  ],
  "codecProfiles": [
    {
      "type": "AudioCodec",
      "name": "mp3",
      "limitations": [
        { "name": "audioBitrate", "comparison": "LessThanEqual", "values": [ "320000" ], "required": true }
      ]
    },
    {
      "type": "AudioCodec",
      "name": "flac",
      "limitations": [
        { "name": "audioSamplerate", "comparison": "LessThanEqual", "values":  [ "192000" ], "required": false },
        { "name": "audioChannels",  "comparison": "Equals", "values": ["1", "2" ],      "required": false }
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
| `maxAudioBitrate` | integer | No | **Yes** | The maximum audio bitrate the client can handle. 0 or missing means no limitation. |
| `maxTranscodingAudioBitrate` | integer | No | **Yes** | The maximum audio bitrate for transcoded content. 0 or missing means no limitation. |
| `directPlayProfiles` | [DirectPlayProfile[]](../payloads/directplayprofile) | No | **Yes** | A list of profiles for direct playback. |
| `transcodingProfiles` | [TranscodingProfile[]](../payloads/transcodingprofile) | No | **Yes** | A list of profiles for transcoding. The server should evaluate these in the order they are listed, as a priority list. |
| `codecProfiles` | [CodecProfile[]](../payloads/codecprofile) | No | **Yes** | A list of codec-specific profiles. |
