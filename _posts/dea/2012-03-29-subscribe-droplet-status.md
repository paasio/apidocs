---
layout: post
category: dea
title: "Subscribe: droplet.status"
---

The `droplet.status` message is used to report status on all available droplets.
The request itself is just an empty string, but it expects multiple replies, one
for each droplet from all DEAs.

Currently, `droplet.status` message isn't triggered by any of the core Cloud
Foundry components.

### Request

The request is simply an empty string.

### Response

This message expects one or more response on the included reply channel, one for
each running droplet

<div class="js example">
{% highlight js %}
{% include snippets/droplet-status-reply.json %}
{% endhighlight %}
</div>

### Requested By

It is triggered by the following components:

* None

### Triggered By

It is triggered by the following actions:

* None
