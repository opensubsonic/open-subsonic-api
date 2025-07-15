---
title: "transcodeDecision"
linkTitle: "transcodeDecision [OS]"
opensubsonic:
- Extension
description: >
  The response from the getTranscodeDecision endpoint.
---

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

| Field | Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `canDirectPlay` | boolean | **Yes** | **Yes** | Whether the media can be played directly by the client. |
| `canTranscode` | boolean | **Yes** | **Yes** | Whether the media can be transcoded by the server. |
| `transcodeReason` | string[] | No | **Yes** | An array of reasons why transcoding is necessary. The strings are server specific made for logging purpose, the server should return 1 string per direct play profile. |
| `errorReason` | string | No | **Yes** | A description of an error that occurred. |
| `transcodeParams` | string | No | **Yes** | An server internal value to be passed to the transcode endpoint, the value needs to be properly escaped to be reused as is in url parameter. See [`getTranscodeStream`](../endpoints/gettranscodestream). The client may not use the value instantly and should be kept valid by the server for a reasonable duration if stored in memory. |
| `sourceStream` | [StreamDetails](../responses/streamdetails) | No | **Yes** | Details about the source media stream. |
| `transcodeStream` | [StreamDetails](../responses/streamdetails) | No | **Yes** | Details about the target transcoded stream if `canTranscode` is true. |
