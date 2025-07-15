---
title: "getTranscodeDecision"
linkTitle: "getTranscodeDecision"
categories:
- Transcoding
OpenSubsonic:
- Extension
description: >
  Returns a transcode decision for a given media file.
---

`http://your-server/rest/getTranscodeDecision`

Returns a transcode decision for a given media file. This endpoint is used by clients to determine if a media file should be transcoded before streaming. The server will analyze the provided client information and return a decision.
This endpoint must be accessed using a POST request

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `mediaId` | **Yes** | | | The ID of the media to be transcoded. |
| `mediaType` | **Yes** | | | Either song or podcast so the server knows what the mediaId is referring to. |

### Request Body

The request body must be a JSON object containing the client's capabilities. See the [`ClientInfo`](../payloads/clientinfo) documentation for more details.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="ClientInfo" lang="json">}}
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
      "container": "mp3",
      "audioCodec": "mp3",
      "protocol": "http",
      "maxAudioChannels": 2
    },
    {
      "container": "flac",
      "audioCodec": "flac",
      "protocol": "hls",
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

### Example

{{< alert color="primary" >}} `http://your-server/rest/getTranscodeDecision.view?mediaId=123&mediaType=song&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`transcodeDecision`](../../responses/transcodedecision) element on success.

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
    "transcodeDecision": {
      "canDirectPlay": false,
      "canTranscode": true,
      "transcodeReason": ["AudioCodecNotSupported"],
      "errorReason": "",
      "transcodeParams": "0001-0005-004",
      "sourceStream": {
        "protocol": "http",
        "container": "flac",
        "codec": "flac",
        "audioChannels": 6,
        "audioBitrate": 3000000,
        "audioProfile": "",
        "audioSamplerate": 96000,
        "audioBitdepth": 24
      },
      "transcodeStream": {
        "protocol": "hls",
        "container": "mp4",
        "codec": "aac",
        "audioChannels": 2,
        "audioBitrate": 256000,
        "audioProfile": "xHE-AAC",
        "audioSamplerate": 48000,
        "audioBitdepth": 16
      }
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `transcodeDecision` | [`transcodeDecision`](../../responses/transcodedecision)  | **Yes** |     | The transcode decision |

{{< alert color="warning" title="OpenSubsonic" >}}
This endpoint must be accessed using a POST request
{{< /alert >}}
