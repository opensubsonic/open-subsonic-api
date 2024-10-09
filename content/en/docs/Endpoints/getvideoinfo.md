---
title: "getVideoInfo"
linkTitle: "getVideoInfo"
categories:
- Browsing
description: >
    Returns details for a video.
---

`http://your-server/rest/getVideoInfo` Since [1.14.0](../../subsonic-versions)

Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |   | The video ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getVideoInfo.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`videoInfo`](../../responses/videoinfo) element on success.

{{< tabpane persistLang=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
// TODO
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
   "subsonic-response" : {
      "status" : "ok",
      "version" : "1.16.1",
      "videoInfo" : {
         "id" : "83"
      }
   }
}
{{< /tab >}}
{{< tab header="Subsonic (XML)" lang="xml" >}}
<subsonic-response status="ok" version="1.14.0">
<videoInfo id="7058">
    <captions id="0" name="Planes 2.srt"/>
    <audioTrack id="1" name="English" languageCode="eng"/>
    <audioTrack id="3" name="Danish" languageCode="dan"/>
    <audioTrack id="4" name="Finnish" languageCode="fin"/>
    <audioTrack id="5" name="Norwegian" languageCode="nor"/>
    <audioTrack id="6" name="Swedish" languageCode="swe"/>
    <conversion id="37" bitRate="1000"/>
  </videoInfo>
</subsonic-response>
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `videoInfo` | [`videoInfo`](../../responses/videoinfo) | **Yes** | | |
