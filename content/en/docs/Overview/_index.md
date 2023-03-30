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

See:

- [OpenSubsonic API](../reference/opensubsonic-api) for the API documentation.
- [Goals](#goals) for some of the goals of this project.
- [Issues](#addressing-issues-with-the-subsonic-api) for some of the issues this projects tries to solve over the original API.

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

## Goals

The OpenSubsonic API has several goals, which include:

- Being an open, collaboratively maintained specification.
- Ensuring security across all extensions.
- Maintaining complete backwards compatibility with the existing Subsonic API.
- Offering piecewise optional implementation for servers and clients.

## Addressing Issues with the Subsonic API

Some of the issues the OpenSubsonic API aims to address include:

- Outdated and insecure authentication methods.
- Suboptimal versioning schema.
- Insufficient methods for expressing server functionality.
- Lack of an open and collaborative way to evolve the API.

By extending the existing Subsonic API, the OpenSubsonic API hopes to create a more secure, flexible, and collaborative environment for the Subsonic ecosystem.

## Join us

Feel free to join the [OpenSubsonic](https://github.com/opensubsonic/open-subsonic-api/discussions) forum for discussions, suggestions and questions.
