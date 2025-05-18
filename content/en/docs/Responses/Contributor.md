---
title: "Contributor"
linkTitle: "Contributor [OS]"
opensubsonic:
- Addition
description: >
  A contributor artist for a song or an album
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
    "role": "performer",
    "subRole": "Bass",
    "artist": {
        "id": "ar-1",
        "name": "Artist 1"
    }
}
{{< /tab >}}
{{< tab header="Subsonic"  >}}
Does not exist.
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `role` | `string` | **Yes** | **Yes**    | The contributor role. |
| `subRole` | `string` | No | **Yes**    | The subRole for roles that may require it. Ex: The instrument for the performer role (TMCL/performer tags). **Note:** For consistency between different tag formats, the TIPL sub roles should be directly exposed in the role field. |
| `artist` | [`ArtistID3`](../artistid3) | **Yes**  | **Yes**     | The artist taking on the role. (Note: Only the required [`ArtistID3`](../artistid3) fields should be returned by default)|

{{< alert color="warning" title="OpenSubsonic" >}}
This is a new OpenSubsonic response type.
{{< /alert >}}
