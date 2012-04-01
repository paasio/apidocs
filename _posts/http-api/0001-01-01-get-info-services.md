---
layout: post
category: http-api
title: "GET /info/services"
---

Returns information about system services that are available on the target cloud.

### Resource URL

`GET /info/services`

### Parameters

None

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`GET http://api.vcap.me/info/services`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-info-services-response.json %}
{% endhighlight %}
</div>
