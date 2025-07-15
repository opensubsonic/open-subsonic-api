---
title: "getTranscodeDecision"
linkTitle: "getTranscodeDecision"
categories:
- Transcoding
description: >
  Returns a transcode decision for a given media file.
---

`http://your-server/rest/getTranscodeDecision`

Returns a transcode decision for a given media file. This endpoint is used by clients to determine if a media file should be transcoded before streaming. The server will analyze the provided client information and return a decision.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `songId` | **Yes** | | | The ID of the song to be transcoded. |
| `offset` | No | | 0 | The time offset in seconds from which to start transcoding. |

### Request Body

The request body must be a JSON object containing the client's capabilities. See the [`ClientInfo`](../responses/clientinfo) documentation for more details.

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="ClientInfo" lang="json">}}
{
  "name": "Pixel 8 Pro",
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

### Example

{{< alert color="primary" >}} `http://your-server/rest/getTranscodeDecision.view?songId=123&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

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
      "transcodeUrl": "/rest/getTranscodeStream.view?trackID=123&offset=0&parameters=...",
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
