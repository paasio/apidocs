---
layout: post
category: cloud-controller
title: "Subscribe: vcap.component.discover"
---

When the cloud controller is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the cloud controller is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the cloud controller

The `vcap.component.discover` message is sent out by the cloud controller in order to announce
its existence and to publish the monitoring endpoints.

### Request

There is no message for this request.

### Response

<div class="js example">
{% highlight js %}
{% include snippets/cloudcontroller-component-discover.json %}
{% endhighlight %}
</div>
