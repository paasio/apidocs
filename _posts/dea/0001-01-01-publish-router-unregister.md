---
layout: post
category: dea
title: "Publish: router.unregister"
---

The `router.unregister` message is used to remove an application endpoint
from the router for the given URIs.

<div class="js example">
{% highlight js %}
{% include snippets/router-unregister.json %}
{% endhighlight %}
</div>

The `router.unregister` message is sent by the DEA for the following actions:

* After a instance has been stopped or crashed.
* As a part of processing a [`dea.update`](/dea/subscribe-dea-update) message
which removed some URLs from the application.
