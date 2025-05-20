---
title: "albumInfo"
linkTitle: "albumInfo"
description: >
  Album info.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "notes": "Download the full release here (creative commons). These cripsy beats are ripe with thumping funk and techno influences, sample wizardry and daring shuffles. Composed with the help of unique sound plugins which were especially programmed to measure Comfort Fit’s needs and wishes, we think the chances aren’t bad that you’ll fall for the unique sound signature, bounce and elegance of this unusual Hip Hop production. Ltj bukem / Good looking Rec., UK: \"Really love this music.\" Velanche / XLR8R, UK: \"Awesome job he's done... overall production is dope.\" Kwesi / BBE Music, UK: \"Wooooooowwwww... WHAT THE FUCK! THIS IS WHAT",
  "musicBrainzId": "6e1d48f7-717c-416e-af35-5d2454a13af2",
  "smallImageUrl": "http://localhost:8989/play/art/0f8c3cbd6b0b22c3b5402141351ac812/album/21/thumb34.jpg",
  "mediumImageUrl": "http://localhost:8989/play/art/41b16680dc1b3aaf5dfba24ddb6a1712/album/21/thumb64.jpg",
  "largeImageUrl": "http://localhost:8989/play/art/e6fd8d4e0d35c4436e56991892bfb27b/album/21/thumb174.jpg"
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "notes": "Download the full release here (creative commons). These cripsy beats are ripe with thumping funk and techno influences, sample wizardry and daring shuffles. Composed with the help of unique sound plugins which were especially programmed to measure Comfort Fit’s needs and wishes, we think the chances aren’t bad that you’ll fall for the unique sound signature, bounce and elegance of this unusual Hip Hop production. Ltj bukem / Good looking Rec., UK: \"Really love this music.\" Velanche / XLR8R, UK: \"Awesome job he's done... overall production is dope.\" Kwesi / BBE Music, UK: \"Wooooooowwwww... WHAT THE FUCK! THIS IS WHAT",
  "musicBrainzId": "6e1d48f7-717c-416e-af35-5d2454a13af2",
  "smallImageUrl": "http://localhost:8989/play/art/0f8c3cbd6b0b22c3b5402141351ac812/album/21/thumb34.jpg",
  "mediumImageUrl": "http://localhost:8989/play/art/41b16680dc1b3aaf5dfba24ddb6a1712/album/21/thumb64.jpg",
  "largeImageUrl": "http://localhost:8989/play/art/e6fd8d4e0d35c4436e56991892bfb27b/album/21/thumb174.jpg"
}
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `notes` | `string` | No |     | Album notes |
| `musicBrainzId` | `string` | No |     | Album musicBrainzId |
| `lastFmUrl` | `string` | No|     | Album lastFmUrl |
| `smallImageUrl` | `string` | No |     | Album smallImageUrl |
| `mediumImageUrl` | `string` | No|     | Album mediumImageUrl|
| `largeImageUrl` | `string` | No |     | Album largeImageUrl |
