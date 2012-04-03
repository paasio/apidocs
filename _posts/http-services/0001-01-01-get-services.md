---
layout: post
category: http-services
title: "GET /services"
---

Returns a list of provisioned services that are available on the target cloud.

### Resource URL

`GET /services`

### Parameters

None

### Requires Authentication?

[Yes](/http-authentication)

### Example Request

**Request**

`GET http://api.vcap.me/services`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-services-response.json %}
{% endhighlight %}
</div>
