---
title: "getTranscodeStream"
linkTitle: "getTranscodeStream"
categories:
- Transcoding
OpenSubsonic:
- Extension
description: >
  Returns a transcoded media stream.
---

`http://your-server/rest/getTranscodeStream`

Returns a transcoded media stream. **Note:** Clients should not try to reconstruct the `transcodeParams`. Instead, they must use the `transcodeParams` provided in the response of the [`getTranscodeDecision`](../gettranscodedecision) endpoint.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `mediaId` | **Yes** | | | The ID of the media to be transcoded. |
| `mediaType` | **Yes** | | | Either song or podcast so the server knows what the mediaId is referring to. |
| `offset` | No | | 0 | The time offset in seconds from which to start transcoding. |
| `transcodeParams` | **Yes** | | | Server-specific transcoding parameters, obtained from the property `transcodeParams` of the result of the endpoint `getTranscodeDecision`. The value is unique and already properly escaped. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getTranscodeStream.view?mediaIdId=123&mediaType=song&offset=0&parameters=...&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

The raw transcoded media stream. In case of an error, a standard HTTP error code is returned with a descriptive message.
