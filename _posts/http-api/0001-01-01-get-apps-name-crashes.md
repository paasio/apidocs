---
layout: post
category: http-api
title: "GET /apps/{name}/crashes"
---

Returns information about application crashes on the target cloud.

### Resource URL

`GET /apps/{name}/crashes`

### Parameters

* `name` (*required*) is the name of the application

### Requires Authentication?

[Yes](/http-api/authentication)

### Example Request

**Request**

`GET http://api.vcap.me/apps/apidocs/crashes`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-apps-name-crashes-response.json %}
{% endhighlight %}
</div>