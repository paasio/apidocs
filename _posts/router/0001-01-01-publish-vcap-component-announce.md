---
layout: post
category: router
title: "Publish: vcap.component.announce"
---

When the router is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the router is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the router

The `vcap.component.announce` message is sent out by the router in order to announce
its existence and to publish the monitoring endpoints.

The message is sent out when the router is starting up and each time the router receives
a [vcap.component.discover](/router/subscribe-vcap-component-discover) request.

<div class="js example">
{% highlight js %}
{% include snippets/router-component-announce.json %}
{% endhighlight %}
</div>

The message expects no reply.