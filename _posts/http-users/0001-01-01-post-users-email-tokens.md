---
layout: post
category: http-users
title: "POST /users/{email}/tokens"
---

Logs the user in and returns the auth_token provided by the target cloud.

### Resource URL

`POST /users/{email}/tokens`

### Parameters

* `email` (*required*) is the email of the user
* `password` (*required*) is the password of the user

### Requires Authentication?

No

### Example Request

**Request**

`POST http://api.vcap.me/users/user@vcap.me/tokens`

<div class="js example">
{% highlight js %}
{% include snippets/http-api-post-users-email-tokens-request.json %}
{% endhighlight %}
</div>

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-post-users-email-tokens-response.json %}
{% endhighlight %}
</div>
