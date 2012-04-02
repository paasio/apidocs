---
layout: post
category: http-varz
title: "RaaS Provisioner"
---

Returns runtime metrics gathered by the Redis Service Provisioner.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://a8fbb724c227520e5dc6cc27f652a788:9be785de73d6b9c311bede8e2eb66395@192.168.1.15:33668/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-raas-provisioner.json %}
{% endhighlight %}
</div>