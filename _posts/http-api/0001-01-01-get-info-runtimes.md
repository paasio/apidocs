---
layout: post
category: http-api
title: "GET /info/runtimes"
---

Returns information about system runtimes that are available on the target cloud.

### Resource URL

`GET /info/runtimes`

### Parameters

None

### Requires Authentication?

No

### Example Request

**Request**

`GET http://api.vcap.me/info/runtimes`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-info-runtimes-response.json %}
{% endhighlight %}
</div>
