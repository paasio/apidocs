---
layout: post
category: http-varz
title: "Authentication"
---

In order to access to the /varz endpoints it is mandatory to use the
[basic authentication scheme](http://en.wikipedia.org/wiki/Basic_access_authentication).

The connection details (`host`, `port`, `username` and `password`) can be gathered:
* Publishing a `vcap.component.discover` message
* Using the static values specified at the `status` section of the `cloud_controller.yml` file

For example, when publishing a `vcap.component.discover` message, the
[cloud controller](/cloud-controller/subscribe-vcap-component-discover) will respond with:

<div class="js example">
{% highlight js %}
{% include snippets/cloudcontroller-component-discover.json %}
{% endhighlight %}
</div>

Then you can use the `host` and `credentials` vars to issue a GET request:

`GET http://{user}:{password}@{host}/varz`