---
layout: post
category: http-varz
title: "Neo4jaaS Node"
---

Returns runtime metrics gathered by the Neo4j Service Node.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://3a45dcf583062657b9ed1b23a3cb9f1b:ab69b0bd1d1881520bec5f7f2171d11b@192.168.1.15:37400/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-neo4jaas-node.json %}
{% endhighlight %}
</div>