---
layout: post
category: http-api
title: "DELETE /apps/{name}"
---

Deletes a provisioned service on the target cloud.

### Resource URL

`DELETE /apps/{name}`

### Parameters

* `name` (*required*) is the name of the application

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`DELETE http://api.vcap.me/apps/apidocs`

**Response**

None