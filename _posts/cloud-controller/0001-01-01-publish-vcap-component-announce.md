---
layout: post
category: cloud-controller
title: "Publish: vcap.component.announce"
---

When the cloud controller is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the cloud controller is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the cloud controller

The `vcap.component.announce` message is sent out by the cloud controller in order to announce
its existence and to publish the monitoring endpoints.

The message is sent out when the cloud controller is starting up and each time the cloud controller receives
a [vcap.component.discover](/cloud-controller/subscribe-vcap-component-discover) request.

<div class="js example">
{% highlight js %}
{% include snippets/cloudcontroller-component-announce.json %}
{% endhighlight %}
</div>

The message expects no reply.