---
layout: post
category: http-api
title: "GET /services/{alias}"
---

Returns information about a provisioned service on the target cloud.

### Resource URL

`GET /services/{alias}`

### Parameters

* `alias` (*required*) is the name of the provisioned service

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`GET http://api.vcap.me/services/redis-d80d7`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-services-alias-response.json %}
{% endhighlight %}
</div>
