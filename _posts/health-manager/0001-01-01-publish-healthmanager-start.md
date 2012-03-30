---
layout: post
category: health-manager
title: "Publish: healthmanager.start"
---

The `healthmanager.start` message is simply an empty string.  It is sent by the
Health Manager on startup. It doesn't expect an explicit response, however the
DEAs subscribe to the message and use it to know to send a
[`dea.heartbeat`](/health-manager/subscribe-dea-heartbeat) back.
