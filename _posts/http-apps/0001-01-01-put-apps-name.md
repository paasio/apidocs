---
layout: post
category: http-apps
title: "PUT /apps/{name}"
---

Updates an application at target cloud.

### Resource URL

    PUT /apps/{name}

### Parameters

* `name` (*required*) is the name of the application
* `staging`-`model` (*required*) is the application framework
* `staging`-`stack` (*required*) is the application runtime
* `uris` (*required*) are the urls mapped to the application
* `instances` (*required*) is the number of application instances
* `resources`-`memory` (*required*) is the application memory size
* `state` (*required*) is the state of the application (must be `STARTED` or `STOPPED`)
* `services` (*required*) are the provisioned services binded to the application
* `env` (*required*) are the application environment variables
* `meta`-`debug` (*required*) if the application must be started in the debug mode

### Requires Authentication?

[Yes](/http-authentication)

### Response Codes

* HTTP 200 - Success, changes are applied
* HTTP 400, error code 309 - Application debugging not allowed
* HTTP 400, error code 300 - Part of the application configuration is invalid

### Example Request

**Request**

    PUT http://api.vcap.me/apps/apidocs

<div class="js example">
{% highlight js %}
{% include snippets/http-api-put-apps-name-request.json %}
{% endhighlight %}
</div>

**Response**

    200 OK

<div class="js example">
{% highlight js %}
{% include snippets/http-api-put-apps-name-response.json %}
{% endhighlight %}
</div>
