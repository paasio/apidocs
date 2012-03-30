---
layout: post
category: cloud-controller
title: "Publish: router.register"
---

The `router.register` message is used to register the Cloud Controller instance
with the Router.

<div class="js example">
{% highlight js %}
{% include snippets/router-register.json %}
{% endhighlight %}
</div>

The Cloud Controller doesn't need to live behind the Router and is able to
function on its own, however the default behavior is to register with it.  This
can be disabled by setting the `CC_NOSTART` environment variable when starting
the Cloud Controller.

The `router.register` message is sent by the Cloud Controller for the following
actions:

* The Cloud Controller has finished started up
* As a follow up to the DEA receiving a [`router.start`](/cloud-controller/subscribe-router-start)
message.
