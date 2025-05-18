---
title: "getInternetRadioStations"
linkTitle: "getInternetRadioStations"
categories:
- Internet radio
description: >
  Returns all internet radio stations.
---

`http://your-server/rest/getInternetRadioStations` Since [1.9.0](../../subsonic-versions)

Returns all internet radio stations. Takes no extra parameters.

### Parameters

Takes no extra parameters.

### Example

{{< alert color="primary" >}} `http://your-server/rest/getInternetRadioStations.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`internetRadioStations`](../../responses/internetradiostations) element on success.

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
    "internetRadioStations": {
      "internetRadioStation": [
        {
          "id": "1",
          "name": "HBR1.com - Dream Factory",
          "streamUrl": "http://ubuntu.hbr1.com:19800/ambient.aac",
          "homepageUrl": "http://www.hbr1.com/"
        },
        {
          "id": "2",
          "name": "HBR1.com - I.D.M. Tranceponder",
          "streamUrl": "http://ubuntu.hbr1.com:19800/trance.ogg",
          "homepageUrl": "http://www.hbr1.com/"
        },
        {
          "id": "3",
          "name": "4ZZZ Community Radio",
          "streamUrl": "https://stream.4zzz.org.au:9200/4zzz",
          "homepageUrl": "https://4zzzfm.org.au"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "internetRadioStations": {
      "internetRadioStation": [
        {
          "id": "1",
          "name": "HBR1.com - Dream Factory",
          "streamUrl": "http://ubuntu.hbr1.com:19800/ambient.aac",
          "homepageUrl": "http://www.hbr1.com/"
        },
        {
          "id": "2",
          "name": "HBR1.com - I.D.M. Tranceponder",
          "streamUrl": "http://ubuntu.hbr1.com:19800/trance.ogg",
          "homepageUrl": "http://www.hbr1.com/"
        },
        {
          "id": "3",
          "name": "4ZZZ Community Radio",
          "streamUrl": "https://stream.4zzz.org.au:9200/4zzz",
          "homepageUrl": "https://4zzzfm.org.au"
        }
      ]
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `internetRadioStations` | [`internetRadioStations`](../../responses/internetradiostations) | **Yes** |   | The radio stations|
