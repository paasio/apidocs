---
layout: category
title: User APIs
category_home: http-users
---

This API category covers the endpoints that are used to manage users.

## The User Account and Authentication Service

These HTTP APIs are implemented in the UAA, which has a bunch of
standard endpoints (OAuth2, SCIM) and some custom ones specific to
Cloud Foundry.  More detailed documentation can be found
[here](https://github.com/cloudfoundry/uaa/blob/master/docs/UAA-APIs.md). In
cloudfoundry.com there are restrictions on access so that regular
users cannot access these [endpoints](https://uaa.cloudfoundry.com).
On a local or custom vcap installation user accounts can be managed by
an admin user or client app (see [security model
documentation](https://github.com/cloudfoundry/uaa/blob/master/docs/UAA-Security.md)
for more information).

## Legacy Endpoints on CloudController

The old (soon to be deprecated or removed) APIs are implemented by the
[Cloud Controller](/cloud-controller).

There are several client libraries to interact with the old API:

* [Java](https://github.com/cloudfoundry/vcap-java-client)
* [Node.js](https://github.com/firebaseco/vcap-node-client)
* [Ruby](https://github.com/frodenas/cloudfoundry-client)