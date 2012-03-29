---
layout: category
title: Service Node
category_home: service-node
---

Service Nodes sit behind the Service Gateways.  They typically deal with the
finer details of provisioning the request service, such as setting up the
MySQL database or starting a Redis instance.

You will normally have multiple Service Nodes reporting to a Service Gateway.
The nodes are independent of each, while the gateways may be singular or in a
clustered pair for high availability.
