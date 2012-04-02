---
layout: post
category: http-varz
title: "Cloud Controller"
---

Returns runtime metrics gathered by the Cloud Controller.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://37637511ab0e387f764646dea0a692f9:9d00ec8ab3ea7f5b35abcd341db578bf@192.168.1.15:41111/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-cloud-controller.json %}
{% endhighlight %}
</div>