---
layout: post
category: http-varz
title: "MongoaaS Node"
---

Returns runtime metrics gathered by the MongoDB Service Node.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://e86c714dfe4efbfd09aed690c71a867f:a31b74bf5efc1d12c624f7f0f13b3543@192.168.1.15:52137/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-mongoaas-node.json %}
{% endhighlight %}
</div>