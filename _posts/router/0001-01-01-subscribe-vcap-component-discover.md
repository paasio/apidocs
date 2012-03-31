---
layout: post
category: router
title: "Subscribe: vcap.component.discover"
---

When the router is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the router is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the router

The `vcap.component.discover` message is sent out by the router in order to announce
its existence and to publish the monitoring endpoint.

### Request

There is no message for this request.

### Response

<div class="js example">
{% highlight js %}
{% include snippets/router-component-discover.json %}
{% endhighlight %}
</div>
