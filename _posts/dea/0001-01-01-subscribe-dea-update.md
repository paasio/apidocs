---
layout: post
category: dea
title: "Subscribe: dea.update"
---

The `dea.update` message is sent by the Cloud Controller whenever a change is
made to an application that needs updating, but doesn't require restarting or
restaging the application.

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

### Requested By

It is triggered by the following components:

* [Cloud Controller](/cloud-controller/publish-dea-update)

### Triggered By

It is triggered by the following actions:

* Currently, this is only known to happen when changing an application's
mapped URLs.
* It may also be used to apply updates to an application that don't require a
restart or restating.  There aren't any other known updates beyond URLs that do
this, as service changes may trigger restaging and then restarting.
