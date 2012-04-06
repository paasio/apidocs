---
layout: post
category: cloud-controller
title: "Publish: healthmanager.status"
---

The `healthmanager.status` message is used to determine how many instances of an
application are in an unhealth state, such as crashed or flapping.  This request
is used during restart and start operations.  It is looking to spot any instances
that might have failed to launch.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/healthmanager-status.json %}
{% endhighlight %}
</div>

This request originates from the Cloud Controller. Some specifics include:

* `state` can only be `FLAPPING` or `CRASHED`
* `version` is only included if `state` is `FLAPPING`

### Response

This message expects a response on the included reply channel.

<div class="js example">
{% highlight js %}
{% include snippets/healthmanager-status-reply.json %}
{% endhighlight %}
</div>

Note that the response for the request depends on which `state` was specified.
The first response, which includes `indices` is returned if the `state` is set
to `FLAPPING`.  If `state` is `CRASHED`, then the response including `instances`
is returned.
