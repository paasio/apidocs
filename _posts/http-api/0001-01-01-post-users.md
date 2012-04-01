---
layout: post
category: http-api
title: "POST /users"
---

Creates a new user on the target cloud.

### Resource URL

`POST /users`

### Parameters

* `email` (*required*) is the email of the new user
* `password` (*required*) is the password of the new user

### Requires Authentication?

No

### Example Request

**Request**

`POST http://api.vcap.me/users`

<div class="js example">
{% highlight js %}
{% include snippets/http-api-post-users-request.json %}
{% endhighlight %}
</div>

**Response**

None