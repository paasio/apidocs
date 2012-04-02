---
layout: post
category: http-varz
title: "MongoaaS Provisioner"
---

Returns runtime metrics gathered by the MongoDB Service Provisioner.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://27e40800fb7c50741d003e663dc52ceb:82e724ac255aeba716f89ffb76514d22@192.168.1.15:41786/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-mongoaas-provisioner.json %}
{% endhighlight %}
</div>