---
layout: post
category: health-manager
title: "Publish: cloudcontrollers.hm.requests"
---

The `cloudcontrollers.hm.requests` message is used by the Health Manager to
request the Cloud Controller to perform some action such as starting or stopping
application instances.

The Health Manager itself doesn't perform any actions to start/stop instances,
it only notices events that have happened and the system state, and requests
the Cloud Controller to perform actions to keep things in balance.

<div class="js example">
{% highlight js %}
{% include snippets/cloudcontrollers-hm-requests.json %}
{% endhighlight %}
</div>

The `op` attribute will be either `START` or `STOP`.  If it is `STOP`, then the
`indices` attribute is ommitted and it instead includes `instances`.

The `cloudcontrollers.hm.requests` message is sent by the Health Manager for the
following actions:

* If the Health Manager detects an extra instance of an application is running.
* If the Health Manager detects an old version of an application is running.
* If the Health Manager detects an application instance is down or instances
are missing.
