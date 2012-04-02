---
layout: post
category: http-varz
title: "Neo4jaaS Provisioner"
---

Returns runtime metrics gathered by the Neo4j Service Provisioner.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://539fc7be9e47d3c748a6c8d9c2cdcc87:7be1e673eeadf374181ad993a2b05698@192.168.1.15:52580/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-neo4jaas-provisioner.json %}
{% endhighlight %}
</div>