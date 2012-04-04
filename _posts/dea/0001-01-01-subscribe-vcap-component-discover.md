---
layout: post
category: dea
title: "Subscribe: vcap.component.discover"
---

When a DEA is registered through the system (via `VCAP::Component.register`), it starts an
http server and expose 2 endpoints:

* `/healthz`:  returns if the DEA is up (simple 'ok' string)
* `/varz`: returns runtime metrics gathered by the DEA

The `vcap.component.discover` message is sent out by the DEA in order to announce
its existence and to publish the monitoring endpoints.

### Request

There is no message for this request.

### Response

<div class="js example">
{% highlight js %}
{% include snippets/dea-component-discover.json %}
{% endhighlight %}
</div>
