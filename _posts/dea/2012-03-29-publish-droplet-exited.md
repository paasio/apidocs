---
layout: post
category: dea
title: "Publish: droplet.exited"
---

The `droplet.exited` message is sent out by a DEA when an application instance
is stopped or has otherwise crashed.

The message is subscribed to by the Health Manager and is used to know when an
application has crashed or is finished being stopped.

### Message

<div class="js example">
{% highlight js %}
{% include snippets/droplet-exited.json %}
{% endhighlight %}
</div>

There are a few potential values of `reason`, including:

* `STOPPED` - Sent when the application was requested to be stopped.
* `CRASHED` - Sent when the application has crashed
* `DEA_SHUTDOWN` - Sent when the DEA is in the process of shutting down.
* `DEA_EVACUATION` - Sent as an early shutdown notification.  The DEA will tell
the Health Manager the instance needs to be restarted on another node before the
instance actually exits.

If the `reason` is `CRASHED`, then an additional `crash_timestamp` attribute
will be included containing the timestamp of when the instance crashed.
