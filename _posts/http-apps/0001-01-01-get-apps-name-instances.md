---
layout: post
category: http-apps
title: "GET /apps/{name}/instances"
---

Returns information about application instances on the target cloud.

### Resource URL

`GET /apps/{name}/instances`

### Parameters

* `name` (*required*) is the name of the application

### Requires Authentication?

[Yes](/http-authentication)

### Example Request

**Request**

`GET http://api.vcap.me/apps/apidocs/instances`

**Response**

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-apps-name-instances-response.json %}
{% endhighlight %}
</div>
