---
title: "Index based Queue"
linkTitle: "Index based Queue"
OpenSubsonic:
  - Extension
description: >
  Add's support for specifying and querying the play queue with index.
---

**OpenSubsonic version**: [1](../../opensubsonic-versions)

**OpenSubsonic extension name** `indexBasedQueue` (As returned by [`getOpenSubsonicExtensions`](../../endpoints/getopensubsonicextensions))

When a server supports this extension, it provides two new endpoints: [`savePlayQueueByIndex`](../../endpoints/saveplayqueuebyindex) and [`getPlayQueueByIndex`](../../endpoints/getplayqueuebyindex).

## Version 1

You can now save a play queue using an index instead of the current song ID, allowing for duplicate items in the queue.
Similarly, the queue can be retrieved with the current song index.
