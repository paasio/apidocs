---
layout: post
category: dea
title: "Subscribe: router.start"
---

The `router.start` message is sent out by the Router in order for
the DEAs to respond back with [`router.register`](/dea/publish-router-register)
messages. The message is sent out when the Router is starting up, as well as on
a 30 second timer.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/router-start.json %}
{% endhighlight %}
</div>

### Response

There is no explicit response.

The message does trigger a [`router.register`](/dea/publish-router-register) to
be sent back for each of the application instances running under the DEA.

### Requested By

It is triggered by the following components:

* [Router](/router/publish-router-start)

### Triggered By

It is triggered by the following actions:

* Router starting up
* Router sends it on a timer every 30 seconds
