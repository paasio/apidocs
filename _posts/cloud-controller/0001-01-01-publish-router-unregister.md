---
layout: post
category: cloud-controller
title: "Publish: router.unregister"
---

The `router.unregister` message is used to remove the Cloud Controller instance
from the Router.

<div class="js example">
{% highlight js %}
{% include snippets/router-unregister.json %}
{% endhighlight %}
</div>

The `router.unregister` message is sent by the Cloud Controller for the
following actions:

* When the Cloud Controller is shutting down.
