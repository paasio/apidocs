---
layout: post
category: router
title: "Subscribe: router.unregister"
---

The `router.unregister` message is used to remove an application endpoint
from the router for the given URIs.

<div class="js example">
{% highlight js %}
{% include snippets/router-unregister.json %}
{% endhighlight %}
</div>

The message expects no reply.

It is triggered by the following components:

* DEA
* Cloud Controller

It is triggered by the following actions:

* DEA stops an application instance
* DEA notices a droplet crashed
* Cloud Controller is shutting down
