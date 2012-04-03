---
layout: post
category: dea
title: "Publish: vcap.component.announce"
---

When a DEA is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the DEA is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the DEA

The `vcap.component.announce` message is sent out by the DEA in order to announce
its existence and to publish the monitoring endpoints.

The message is sent out when the DEA is starting up and each time the DEA receives
a [vcap.component.discover](/dea/subscribe-vcap-component-discover) request.

<div class="js example">
{% highlight js %}
{% include snippets/dea-component-announce.json %}
{% endhighlight %}
</div>

The message expects no reply.