---
title: "indexes"
linkTitle: "indexes"
description: >
  Artist list.
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic (JSON)" lang="json">}}
{
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
{{< /tab >}}
{{< tab header="OpenSubsonic (XML)" lang="xml">}}
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
{{< /tab >}}
{{< tab header="Subsonic (JSON)" lang="json" >}}
{
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
{{< /tab >}}
{{< tab header="Subsonic (XML)" lang="xml" >}}
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
{{< /tab >}}
{{< /tabpane >}}

| Field |  Type | Req. | OpenS. | Details |
| --- | --- | --- | --- | --- |
| `ignoredArticles` | `string` | **Yes** |   | The ignored articles |
| `lastModified` | `long` | **Yes** |   | Last time the index was modified in milliseconds after January 1, 1970 UTC |
| `shortcut` | Array of [`Artist`](../artist) | No |     | Shortcut |
| `child` | Array of [`Child`](../child) | No |     | Array of children|
| `index` | Array of [`Index`](../index_) | No |   | Indexed artists|
