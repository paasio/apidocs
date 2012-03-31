---
layout: post
category: health-manager
title: "Subscribe: vcap.component.discover"
---

When the health manager is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the health manager is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the health manager

The `vcap.component.discover` message is sent out by the health manager in order to announce
its existence and to publish the monitoring endpoints.

### Request

There is no message for this request.

### Response

<div class="js example">
{% highlight js %}
{% include snippets/healthmanager-component-discover.json %}
{% endhighlight %}
</div>
