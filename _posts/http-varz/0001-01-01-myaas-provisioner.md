---
layout: post
category: http-varz
title: "MyaaS Provisioner"
---

Returns runtime metrics gathered by the MySQL Service Provisioner.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://9bfea4e2e1f9a8dea1ba32e5d5b45bd3:e54278209cc0fe3337bfc5ba6a331d15@192.168.1.15:59772/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-myaas-provisioner.json %}
{% endhighlight %}
</div>