---
title: "getTranscodeStream"
linkTitle: "getTranscodeStream"
categories:
- Transcoding
description: >
  Returns a transcoded media stream.
---

`http://your-server/rest/getTranscodeStream`

Returns a transcoded media stream. **Note:** Clients should not construct this URL manually. Instead, they should use the `transcodeUrl` provided in the response of the [`getTranscodeDecision`](../gettranscodedecision) endpoint.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `trackID` | **Yes** | | | The ID of the track to transcode. |
| `offset` | No | | 0 | The time offset in seconds from which to start transcoding. |
| `parameters` | **Yes** | | | Server-specific transcoding parameters, obtained from the `getTranscodeDecision` endpoint. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getTranscodeStream.view?trackID=123&offset=0&parameters=...&u=demo&p=demo&v=1.16.1&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

The raw transcoded media stream. In case of an error, a standard HTTP error code is returned with a descriptive message.
