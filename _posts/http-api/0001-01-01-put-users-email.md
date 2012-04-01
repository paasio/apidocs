---
layout: post
category: http-api
title: "PUT /users/{email}"
---

Updates the user's password on the target cloud.

### Resource URL

`PUT /users/{email}`

### Parameters

* `email` (*required*) is the email of the user
* `password` (*required*) is the new password of the user

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`PUT http://api.vcap.me/users/user@vcap.me`

<div class="js example">
{% highlight js %}
{% include snippets/http-api-put-users-request.json %}
{% endhighlight %}
</div>

**Response**

None