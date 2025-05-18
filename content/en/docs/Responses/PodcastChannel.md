---
title: "PodcastChannel"
linkTitle: "PodcastChannel"
description: >
  A Podcast channel
---

{{< tabpane persist=false >}}
{{< tab header="**Example**:" disabled=true />}}
{{< tab header="OpenSubsonic" lang="json">}}
{
  "channel": {
    "id": "1",
    "url": "http://downloads.bbc.co.uk/podcasts/fivelive/drkarl/rss.xml",
    "title": "Dr Karl and the Naked Scientist",
    "description": "Dr Chris Smith aka The Naked Scientist with the latest news from the world of science and Dr Karl answers listeners' science questions.",
    "coverArt": "pod-1",
    "originalImageUrl": "http://downloads.bbc.co.uk/podcasts/fivelive/drkarl/drkarl.jpg",
    "status": "completed",
    "episode": [
      {
        "id": "34",
        "streamId": "523",
        "channelId": "1",
        "title": "Scorpions have re-evolved eyes",
        "description": "This week Dr Chris fills us in on the UK's largest free science festival, plus all this week's big scientific discoveries.",
        "publishDate": "2011-02-03T14:46:43",
        "status": "completed",
        "parent": "11",
        "isDir": "false",
        "year": "2011",
        "genre": "Podcast",
        "coverArt": "24",
        "size": "78421341",
        "contentType": "audio/mpeg",
        "suffix": "mp3",
        "duration": "3146",
        "bitRate": "128",
        "path": "Podcast/drkarl/20110203.mp3"
      }
    ]
  }
}
{{< /tab >}}
{{< tab header="Subsonic" lang="json" >}}
{
  "channel": {
    "id": "1",
    "url": "http://downloads.bbc.co.uk/podcasts/fivelive/drkarl/rss.xml",
    "title": "Dr Karl and the Naked Scientist",
    "description": "Dr Chris Smith aka The Naked Scientist with the latest news from the world of science and Dr Karl answers listeners' science questions.",
    "coverArt": "pod-1",
    "originalImageUrl": "http://downloads.bbc.co.uk/podcasts/fivelive/drkarl/drkarl.jpg",
    "status": "completed",
    "episode": [
      {
        "id": "34",
        "streamId": "523",
        "channelId": "1",
        "title": "Scorpions have re-evolved eyes",
        "description": "This week Dr Chris fills us in on the UK's largest free science festival, plus all this week's big scientific discoveries.",
        "publishDate": "2011-02-03T14:46:43",
        "status": "completed",
        "parent": "11",
        "isDir": "false",
        "year": "2011",
        "genre": "Podcast",
        "coverArt": "24",
        "size": "78421341",
        "contentType": "audio/mpeg",
        "suffix": "mp3",
        "duration": "3146",
        "bitRate": "128",
        "path": "Podcast/drkarl/20110203.mp3"
      }
    ]
  }
}
{{< /tab >}}
{{< /tabpane >}}


| Field              | Type                                            | Req.    | OpenS. | Details                                   |
| ------------------ | ----------------------------------------------- | ------- | ------ | ----------------------------------------- |
| `id`               | `string`                                        | **Yes** |        | The channel ID                            |
| `url`              | `string`                                        | **Yes** |        | Podcast channel URL                       |
| `title`            | `string`                                        | No      |        | The channel title                         |
| `description`      | `string`                                        | No      |        | The channel description                   |
| `coverArt`         | `string`                                        | No      |        | ID used for retrieving cover art          |
| `originalImageUrl` | `string`                                        | No      |        | URL for original image of podcast channel |
| `status`           | [PodcastStatus](../podcaststatus)               | **Yes** |        | Channel status                            |
| `errorMessage`     | `string`                                        | No      |        | An error message                          |
| `episode`          | An array of [PodcastEpisode](../podcastepisode) | No      |        | Podcast episodes with this channel        |
