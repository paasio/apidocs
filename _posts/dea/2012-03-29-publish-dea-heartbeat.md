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
