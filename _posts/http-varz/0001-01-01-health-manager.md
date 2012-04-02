---
layout: post
category: http-varz
title: "Health Manager"
---

Returns runtime metrics gathered by the Health Manager.

### Resource URL

`GET /varz`

### Requires Authentication?

[Yes](/http-varz/authentication)

### Example Request

**Request**

`GET http://3acdf6219db11193541da8afe6f2e641:2337c5a6bae03b4451a0c6ad12a815ce@192.168.1.15:42577/varz`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-varz-health-manager.json %}
{% endhighlight %}
</div>