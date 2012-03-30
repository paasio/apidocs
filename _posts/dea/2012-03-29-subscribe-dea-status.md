---
layout: post
category: dea
title: "Subscribe: dea.status"
---

The `dea.status` message is used to report status and usage information on the
DEA.

Currently, the `dea.status` message isn't triggered by any of the core Cloud
Foundry components.

### Request

The request is simply an empty string.

### Response

This message expects a response on the included reply channel.

<div class="js example">
{% highlight js %}
{% include snippets/dea-status-reply.json %}
{% endhighlight %}
</div>

### Requested By

It is triggered by the following components:

* None

### Triggered By

It is triggered by the following actions:

* None
