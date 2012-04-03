---
layout: post
category: http-services
title: "DELETE /services/{alias}"
---

Deletes a provisioned service on the target cloud.

### Resource URL

`DELETE /services/{alias}`

### Parameters

* `alias` (*required*) is the name of the provisioned service

### Requires Authentication?

[Yes](/http-authentication)

### Example Request

**Request**

`DELETE http://api.vcap.me/services/redis-d80d7`

**Response**

None
