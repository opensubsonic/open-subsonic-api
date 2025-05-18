---
title: "internetRadioStations"
linkTitle: "internetRadioStations"
description: >
  internetRadioStations.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
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
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
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
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `internetRadioStation` | Array of [`internetRadioStation`](../internetradiostation) | No |   | A list of internetRadioStation |
