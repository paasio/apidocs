---
layout: post
category: http-users
title: "GET /users/{email}"
---

Returns information about a user on the target cloud.

### Resource URL

`GET /users/{email}`

### Parameters

* `email` (*required*) is the email of the user

### Requires Authentication?

[Yes](/http-authentication)

### Example Request

**Request**

`GET http://api.vcap.me/users/user@vcap.me`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-users-email-response.json %}
{% endhighlight %}
</div>
