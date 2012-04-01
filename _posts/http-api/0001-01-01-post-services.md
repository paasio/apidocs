---
layout: post
category: http-api
title: "POST /services"
---

Creates a new provisioned service on the target cloud.

### Resource URL

`POST /services`

### Parameters

* `name` (*required*) is the name of the provisioned service
* `vendor` (*required*) is the name of the system service
* `version` (*required*) is the version of the system service
* `tier` (*required*) is the tier of the system service

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`POST http://api.vcap.me/services`

<div class="js example">
{% highlight js %}
{% include snippets/http-api-post-services-request.json %}
{% endhighlight %}
</div>

**Response**

None