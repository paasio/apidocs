---
layout: post
category: dea
title: "Subscribe: healthmanager.start"
---

The `healthmanager.start` message is simply an empty string.  It is sent by the
Health Manager on startup. It doesn't expect an explicit response, however the
DEAs subscribe to the message and use it to know to send a
[`dea.heartbeat`](/dea/publish-dea-heartbeat) back.

### Request

The request is simply an empty string.

### Response

There is no explicit response.

The message does trigger a [`dea.heartbeat`](/dea/publish-dea-heartbeat) to be
sent back.

### Requested By

It is triggered by the following components:

* Health Manager

### Triggered By

It is triggered by the following actions:

* Health Manager starting up
