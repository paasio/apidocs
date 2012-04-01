---
layout: post
category: http-api
title: "GET /apps/{name}"
---

Returns basic information about an application deployed on the target cloud.

### Resource URL

`GET /apps/{name}`

### Parameters

* `name` (*required*) is the name of the application

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`GET http://api.vcap.me/apps/apidocs`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-apps-name-response.json %}
{% endhighlight %}
</div>