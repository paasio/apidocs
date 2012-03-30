---
layout: post
category: dea
title: "Publish: router.register"
---

The `router.register` message is used to register an application endpoint
with the Router for the given URIs.

<div class="js example">
{% highlight js %}
{% include snippets/router-register.json %}
{% endhighlight %}
</div>

The `router.register` message is sent by the DEA for the following actions:

* An application instance has finished launching and is available for request.
* A DEA has started up and found some orphaned application instances.  It will
reregister them.
* As a follow up to the DEA receiving a [`router.start`](/dea/subscribe-router-start)
message.
* As a part of processing a [`dea.update`](/dea/subscribe-dea-update) message
which is mapping new URLs to the application.
