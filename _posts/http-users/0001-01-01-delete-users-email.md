---
layout: post
category: http-users
title: "DELETE /users/{email}"
---

Deletes a user on the target cloud.

### Resource URL

`DELETE /users/{email}`

### Parameters

* `email` (*required*) is the email of the user

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`DELETE http://api.vcap.me/users/user@vcap.me`

**Response**

None
