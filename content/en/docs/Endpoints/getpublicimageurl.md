---
title: "getPublicImageURL"
linkTitle: "getPublicImageURL [OS]"
opensubsonic:
- Addition
categories:
- Media retrieval
description: >
  Returns a URL for accessing cover art publicly.
---

`http://your-server/rest/getPublicImageURL`

Returns a cover art image.

### Parameters

| Parameter | Req.    | OpenS. | Default | Comment |
| --------- | ------- | ------ | ------- | --- |
| `id`      | **Yes** |        | The coverArt ID. Returned by most entities likes [`Child`](../../responses/child) or [`AlbumID3`](../../responses/albumid3) | |
| `size`    | No      |        | If specified, scale image to this size. | |


### Example

{{< alert color="primary" >}} `http://your-server/rest/getPublicImageURL.view?id=123&u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`PublicImage`](../../responses/publicImage) element on success.

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
    "publicImage": {
      "url": "https://your-server/public/image-123",
      "expiresAt": "2027-01-01T02:19:35.784818075Z"
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic" >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `publicImage` | [`PublicImage`](../../responses/publicimage) | **Yes** |     | The public image URL and expiration, if specified |
