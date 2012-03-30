---
layout: post
category: health-manager
title: "Subscribe: healthmanager.health"
---

The `healthmanager.health` message is used to determine how many instances of an
application are health and running.  This request normally comes from the Cloud
Controller and is used during restart and start operations.  It will compare the
returned number of health instances to the number of configured instances to
determine how health the application is.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/healthmanager-health.json %}
{% endhighlight %}
</div>

This request originates from the Cloud Controller.  It may request the status
on multiple droplets at the same time.

### Response

This message expects a response on the included reply channel.  If multiple
droplets are specified in the request, it expects one response per droplet.

<div class="js example">
{% highlight js %}
{% include snippets/healthmanager-health-reply.json %}
{% endhighlight %}
</div>

The response simply contains the request droplet and version, as well as the
number of health instances.

### Requested By

It is triggered by the following components:

* [Cloud Controller](/cloud-controller/publish-healthmanager-health)

### Triggered By

It is triggered by the following actions:

* Cloud Controller starting an application and waiting for all instances to be up
