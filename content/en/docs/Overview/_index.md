---
title: "Overview"
linkTitle: "Overview"
weight: 1
description: >
  What is OpenSubsonic API.
---

The OpenSubsonic API allows anyone to build their own programs using a compatible server, whether they’re on the web, the desktop or on mobile devices. All the OpenSubsonic-compatible apps (clients and servers) are built using the OpenSubsonic API.

The OpenSubsonic API allows you to call methods that respond in [REST](http://en.wikipedia.org/wiki/Representational_State_Transfer) style xml or json. Since most clients now only rely on json, this documentation only shows the json answers in the documentation.

This project is built upon the original [Subsonic API](https://www.subsonic.org/pages/api.jsp)

Since the original project is now abandonned, a group of Subsonic clients and servers associated to expand and fix the original API.

This is done by:

- improving documentation to fill some gaps that could have lead some servers to build different implementations.
- simple non breaking extensions to the API.
- adding new well documented endpoints.
- try to ensure that clients still support legacy Subsonic servers.

See [OpenSubsonic API](../reference/opensubsonic-api) for the API documentation.

## Participants

OpenSubsonic is built with servers and clients trying to improve the global media center ecosystem by providing a common expandable API that can fit most of the needs of modern music apps.

Any server or client can join the organisation and make proposal [OpenSubsonic](https://github.com/opensubsonic/open-subsonic-api/discussions). The only condititions is that if (as a client) you request an API extensions that are accepted you engage yourself in implementing it in your client in a timely manner.

### Servers

- [Ampache](https://ampache.org/)
- [Astiga](https://asti.ga)
- [Gonic](https://github.com/sentriz/gonic)
- [LMS - Lightweight Music Server](https://github.com/epoupon/lms)
- [Navidrome](https://www.navidrome.org/)
- [Supysonic](https://github.com/spl0k/supysonic)

### Clients

- [Feishin (ex Sonixd)](https://github.com/jeffvli/feishin)
- [Supersonic](https://github.com/dweymouth/supersonic)
- [Symfonium](https://symfonium.app/)

## Join us

Feel free to join the [OpenSubsonic](https://github.com/opensubsonic/open-subsonic-api/discussions) forum for discussions, suggestions and questions.
