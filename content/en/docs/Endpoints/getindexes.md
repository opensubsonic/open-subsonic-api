---
title: "getIndexes"
linkTitle: "getIndexes"
categories:
- Browsing
description: >
  Returns an indexed structure of all artists.
---

`http://your-server/rest/getIndexes` Since [1.0.0](../../subsonic-versions)

Returns an indexed structure of all artists.

### Parameters

| Parameter | Req. | OpenS. | Default | Comment |
| --- | --- | --- | --- | --- |
| `musicFolderId` | No  |  |  | If specified, only return artists in the music folder with the given ID. See [`getMusicFolders`](../getmusicfolders). |
| `ifModifiedSince` | No  |   |  | If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970). |

### Example

{{< alert color="primary" >}} `http://your-server/rest/getIndexes.view?u=demo&p=demo&v=1.13.0&c=AwesomeClientName&f=json` {{< /alert >}}

### Result

A [`subsonic-response`](../../responses/subsonic-response) element with a nested [`indexes`](../../responses/indexes) element on success.

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
    "indexes": {
      "shortcut": [
        {
          "id": "11",
          "name": "Audio books"
        },
        {
          "id": "10",
          "name": "Podcasts"
        }
      ],
      "index": [
        {
          "artist": [
            {
              "id": "1",
              "name": "ABBA"
            },
            {
              "id": "2",
              "name": "Alanis Morisette"
            },
            {
              "id": "3",
              "name": "Alphaville",
              "starred": "2013-11-02T12:30:00"
            }
          ],
          "name": "A"
        },
        {
          "artist": {
            "name": "Bob Dylan",
            "id": "4"
          },
          "name": "B"
        }
      ],
      "child": [
        {
          "id": "111",
          "parent": "11",
          "title": "Dancing Queen",
          "isDir": "false",
          "album": "Arrival",
          "artist": "ABBA",
          "track": "7",
          "year": "1978",
          "genre": "Pop",
          "coverArt": "24",
          "size": "8421341",
          "contentType": "audio/mpeg",
          "suffix": "mp3",
          "duration": "146",
          "bitRate": "128",
          "path": "ABBA/Arrival/Dancing Queen.mp3"
        },
        {
          "id": "112",
          "parent": "11",
          "title": "Money, Money, Money",
          "isDir": "false",
          "album": "Arrival",
          "artist": "ABBA",
          "track": "7",
          "year": "1978",
          "genre": "Pop",
          "coverArt": "25",
          "size": "4910028",
          "contentType": "audio/flac",
          "suffix": "flac",
          "transcodedContentType": "audio/mpeg",
          "transcodedSuffix": "mp3",
          "duration": "208",
          "bitRate": "128",
          "path": "ABBA/Arrival/Money, Money, Money.mp3"
        }
      ],
      "lastModified": "237462836472342",
      "ignoredArticles": "The El La Los Las Le Les"
    }
  }
}
{{< /tab >}}
{{< tab header="OpenSubsonic (XML)" lang="xml" >}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName" serverVersion="0.1.3 (tag)" openSubsonic="true">
  <indexes lastModified="237462836472342" ignoredArticles="The El La Los Las Le Les">
    <shortcut id="11" name="Audio books"/>
    <shortcut id="10" name="Podcasts"/>
    <index name="A">
      <artist id="1" name="ABBA"/>
      <artist id="2" name="Alanis Morisette"/>
      <artist id="3" name="Alphaville" starred="2013-11-02T12:30:00"/>
    </index>
    <index name="B">
      <artist name="Bob Dylan" id="4"/>
    </index>
    <child id="111" parent="11" title="Dancing Queen" isDir="false" album="Arrival" artist="ABBA" track="7" year="1978" genre="Pop" coverArt="24" size="8421341" contentType="audio/mpeg" suffix="mp3" duration="146" bitRate="128" path="ABBA/Arrival/Dancing Queen.mp3"/>
    <child id="112" parent="11" title="Money, Money, Money" isDir="false" album="Arrival" artist="ABBA" track="7" year="1978" genre="Pop" coverArt="25" size="4910028" contentType="audio/flac" suffix="flac" transcodedContentType="audio/mpeg" transcodedSuffix="mp3" duration="208" bitRate="128" path="ABBA/Arrival/Money, Money, Money.mp3"/>
  </indexes>
</subsonic-response>
{{< /tab >}}

{{< tab header="Subsonic (JSON)" lang="json" >}}
{
  "subsonic-response": {
    "status": "ok",
    "version": "1.16.1",
    "indexes": {
      "shortcut": [
        {
          "id": "11",
          "name": "Audio books"
        },
        {
          "id": "10",
          "name": "Podcasts"
        }
      ],
      "index": [
        {
          "artist": [
            {
              "id": "1",
              "name": "ABBA"
            },
            {
              "id": "2",
              "name": "Alanis Morisette"
            },
            {
              "id": "3",
              "name": "Alphaville",
              "starred": "2013-11-02T12:30:00"
            }
          ],
          "name": "A"
        },
        {
          "artist": {
            "name": "Bob Dylan",
            "id": "4"
          },
          "name": "B"
        }
      ],
      "child": [
        {
          "id": "111",
          "parent": "11",
          "title": "Dancing Queen",
          "isDir": "false",
          "album": "Arrival",
          "artist": "ABBA",
          "track": "7",
          "year": "1978",
          "genre": "Pop",
          "coverArt": "24",
          "size": "8421341",
          "contentType": "audio/mpeg",
          "suffix": "mp3",
          "duration": "146",
          "bitRate": "128",
          "path": "ABBA/Arrival/Dancing Queen.mp3"
        },
        {
          "id": "112",
          "parent": "11",
          "title": "Money, Money, Money",
          "isDir": "false",
          "album": "Arrival",
          "artist": "ABBA",
          "track": "7",
          "year": "1978",
          "genre": "Pop",
          "coverArt": "25",
          "size": "4910028",
          "contentType": "audio/flac",
          "suffix": "flac",
          "transcodedContentType": "audio/mpeg",
          "transcodedSuffix": "mp3",
          "duration": "208",
          "bitRate": "128",
          "path": "ABBA/Arrival/Money, Money, Money.mp3"
        }
      ],
      "lastModified": "237462836472342",
      "ignoredArticles": "The El La Los Las Le Les"
    }
  }
}
{{< /tab >}}
{{< tab header="Subsonic (XML)" lang="xml" >}}
<subsonic-response status="ok" version="1.16.1" type="AwesomeServerName">
  <indexes lastModified="237462836472342" ignoredArticles="The El La Los Las Le Les">
    <shortcut id="11" name="Audio books"/>
    <shortcut id="10" name="Podcasts"/>
    <index name="A">
      <artist id="1" name="ABBA"/>
      <artist id="2" name="Alanis Morisette"/>
      <artist id="3" name="Alphaville" starred="2013-11-02T12:30:00"/>
    </index>
    <index name="B">
      <artist name="Bob Dylan" id="4"/>
    </index>
    <child id="111" parent="11" title="Dancing Queen" isDir="false" album="Arrival" artist="ABBA" track="7" year="1978" genre="Pop" coverArt="24" size="8421341" contentType="audio/mpeg" suffix="mp3" duration="146" bitRate="128" path="ABBA/Arrival/Dancing Queen.mp3"/>
    <child id="112" parent="11" title="Money, Money, Money" isDir="false" album="Arrival" artist="ABBA" track="7" year="1978" genre="Pop" coverArt="25" size="4910028" contentType="audio/flac" suffix="flac" transcodedContentType="audio/mpeg" transcodedSuffix="mp3" duration="208" bitRate="128" path="ABBA/Arrival/Money, Money, Money.mp3"/>
  </indexes>
</subsonic-response>
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `indexes` | [`indexes`](../../responses/indexes) | **Yes** |   | The indexed artist list |
