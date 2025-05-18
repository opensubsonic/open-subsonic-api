---
title: "getAlbumInfo"
linkTitle: "getAlbumInfo"
categories:
- Browsing
description: >
    Returns album info.
---

`http://your-server/rest/getAlbumInfo` Since [1.14.0](../../subsonic-versions)

Returns album notes, image URLs etc, using data from [last.fm](http://last.fm).

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `id` | **Yes** |  |    | The album ID or song ID. |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getAlbumInfo.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`albumInfo`](../../responses/albuminfo) element on success.

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
    "albumInfo": {
      "notes": "Download the full release here (creative commons). These cripsy beats are ripe with thumping funk and techno influences, sample wizardry and daring shuffles. Composed with the help of unique sound plugins which were especially programmed to measure Comfort Fit’s needs and wishes, we think the chances aren’t bad that you’ll fall for the unique sound signature, bounce and elegance of this unusual Hip Hop production. Ltj bukem / Good looking Rec., UK: \"Really love this music.\" Velanche / XLR8R, UK: \"Awesome job he's done... overall production is dope.\" Kwesi / BBE Music, UK: \"Wooooooowwwww... WHAT THE FUCK! THIS IS WHAT",
      "musicBrainzId": "6e1d48f7-717c-416e-af35-5d2454a13af2",
      "smallImageUrl": "http://localhost:8989/play/art/0f8c3cbd6b0b22c3b5402141351ac812/album/21/thumb34.jpg",
      "mediumImageUrl": "http://localhost:8989/play/art/41b16680dc1b3aaf5dfba24ddb6a1712/album/21/thumb64.jpg",
      "largeImageUrl": "http://localhost:8989/play/art/e6fd8d4e0d35c4436e56991892bfb27b/album/21/thumb174.jpg"
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "albumInfo": {
      "notes": "Download the full release here (creative commons). These cripsy beats are ripe with thumping funk and techno influences, sample wizardry and daring shuffles. Composed with the help of unique sound plugins which were especially programmed to measure Comfort Fit’s needs and wishes, we think the chances aren’t bad that you’ll fall for the unique sound signature, bounce and elegance of this unusual Hip Hop production. Ltj bukem / Good looking Rec., UK: \"Really love this music.\" Velanche / XLR8R, UK: \"Awesome job he's done... overall production is dope.\" Kwesi / BBE Music, UK: \"Wooooooowwwww... WHAT THE FUCK! THIS IS WHAT",
      "musicBrainzId": "6e1d48f7-717c-416e-af35-5d2454a13af2",
      "smallImageUrl": "http://localhost:8989/play/art/0f8c3cbd6b0b22c3b5402141351ac812/album/21/thumb34.jpg",
      "mediumImageUrl": "http://localhost:8989/play/art/41b16680dc1b3aaf5dfba24ddb6a1712/album/21/thumb64.jpg",
      "largeImageUrl": "http://localhost:8989/play/art/e6fd8d4e0d35c4436e56991892bfb27b/album/21/thumb174.jpg"
    }
  }
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `albumInfo` | [`albumInfo`](../../responses/albuminfo) | **Yes** |     | The album info |
