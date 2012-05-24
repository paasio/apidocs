---
layout: post
category: http-apps
title: "GET /apps/{name}/stats"
---

Returns information about application statistics on the target cloud.

### Resource URL

    GET /apps/{name}/stats

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

    GET http://api.vcap.me/apps/apidocs/stats

**Response**

    200 OK

<div class="js example">
{% highlight js %}
{% include snippets/http-api-get-apps-name-stats-response.json %}
{% endhighlight %}
</div>
