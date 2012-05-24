---
layout: post
category: http-apps
title: "DELETE /apps/{name}"
---

Deletes a provisioned service on the target cloud.

### Resource URL

    DELETE /apps/{name}

### Parameters

* `name` (*required*) is the name of the application

### Requires Authentication?

[Yes](/http-authentication)

### Response Codes

* HTTP 200 - Success
* HTTP 403, error code 200 - Operation forbidden, usually authentication failed
* HTTP 404, error code 301 - Application not found

### Example Request

**Request**

    DELETE http://api.vcap.me/apps/apidocs

**Response**

    200 OK
