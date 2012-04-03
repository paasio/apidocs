---
layout: post
category: http-varz
title: "MyaaS Node"
---

Returns runtime metrics gathered by the MySQL Service Node.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://b67983fa2ae556b843fc49b04c80e030:e00bca1bc40f2e9d2da5f13703935f64@192.168.1.15:51388/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-myaas-node.json %}
{% endhighlight %}
</div>