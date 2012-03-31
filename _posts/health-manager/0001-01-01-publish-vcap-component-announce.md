---
layout: post
category: health-manager
title: "Publish: vcap.component.announce"
---

When the health manager is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the health manager is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the health manager

The `vcap.component.announce` message is sent out by the health manager in order to announce
its existence and to publish the monitoring endpoints.

The message is sent out when the health manager is starting up and each time the health manager receives
a [vcap.component.discover](/health-manager/subscribe-vcap-component-discover) request.

<div class="js example">
{% highlight js %}
{% include snippets/healthmanager-component-announce.json %}
{% endhighlight %}
</div>

The message expects no reply.