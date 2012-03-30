---
layout: post
category: router
title: "Subscribe: router.register"
---

The `router.register` message is used to register an application endpoint
with the router for the given URIs.

<div class="js example">
{% highlight js %}
{% include snippets/router-register.json %}
{% endhighlight %}
</div>

The message expects no reply.

It is triggered by the following components:

* [DEA](/dea/publish-router-register)
* [Cloud Controller](/cloud-controller/publish-router-register)

It is triggered by the following actions:

* DEA completes launching a new application instance
* Cloud Controller completes startup
* DEA and Cloud Controller responding to a `router.start` message
