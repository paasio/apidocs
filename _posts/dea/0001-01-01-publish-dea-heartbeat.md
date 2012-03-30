---
layout: post
category: dea
title: "Publish: dea.heartbeat"
---

The `dea.heartbeat` message is sent out periodically by the DEAs and it contains
the basic status of each of the droplets running on the given DEA.

It simply states which droplets it is running, including its version, index,
state (such as `RUNNING`), and when it was started.

<div class="js example">
{% highlight js %}
{% include snippets/dea-heartbeat.json %}
{% endhighlight %}
</div>

The `dea.heartbeat` message is sent by the DEA for the following actions:

* As a follow up to receiving a [`healthmanager.start`](/dea/subscribe-healthmanager-start)
message.
* A DEA has started up and found some orphaned application instances.
* On a timer, defaulting to every 10 seconds.
* After an application instance has finished starting up, the DEA will send a
heartbeat containing just the information for that droplet.
