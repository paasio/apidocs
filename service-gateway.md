---
layout: category
title: Service Gateway
category_home: service-gateway
---

The Service Gateway is the main communcation channel for the Cloud Controller
to interact with different services.  The Service Gateways report to the
Cloud Controller their availability and status, and the Cloud Controller makes
requests back to them in order provision requested services.

The Service Gateways then communcate with the available Service Nodes to
provision services and track which ones are already provisioned.
