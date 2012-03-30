---
layout: post
category: cloud-controller
title: "Subscribe: router.start"
---

The `router.start` message is sent out by the Router in order for
the Cloud Controller to respond back with
[`router.register`](/cloud-controller/publish-router-register) message. The
message is sent out when the Router is starting up, as well as on
a 30 second timer.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/router-start.json %}
{% endhighlight %}
</div>

### Response

There is no explicit response.

The message does trigger a [`router.register`](/cloud-controller/publish-router-register)
to be sent back.

### Requested By

It is triggered by the following components:

* Router

### Triggered By

It is triggered by the following actions:

* Router starting up
* Router sends it on a timer every 30 seconds
