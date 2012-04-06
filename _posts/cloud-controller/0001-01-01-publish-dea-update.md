---
layout: post
category: cloud-controller
title: "Publish: dea.update"
---

The `dea.update` message is sent by whenever a change is made to an application
that needs updating, but doesn't require restarting or restaging the application.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/dea-update.json %}
{% endhighlight %}
</div>

### Response

There is no explicit response.

The message may trigger [`router.register`](/dea/publish-router-register) or
[`router.unregister`](/dea/publish-router-unregister) if there are any updates
to the application's URLs.
