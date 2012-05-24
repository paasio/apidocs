---
layout: post
category: http-apps
title: "GET /apps/{name}/instances"
---

Returns information about application instances on the target cloud.

### Resource URL

    GET /apps/{name}/instances

### Parameters

* `name` (*required*) is the name of the application

### Requires Authentication?

[Yes](/http-authentication)

### Response Codes

* HTTP 200 - Success
* HTTP 403, error code 200 - Operation forbidden, usually authentication failed
* HTTP 404, error code 301 - Application not found

### Example Request

**Request**

    GET http://api.vcap.me/apps/apidocs/instances

**Response**

    200 OK

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-apps-name-instances-response.json %}
{% endhighlight %}
</div>
