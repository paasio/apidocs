---
layout: post
category: health-manager
title: "Subscribe: droplet.updated"
---

The `droplet.updated` message is sent out by the Cloud Controller after an
application is updated to let the Health Manager know it may need to update
some of the properties about the application that it stories in memory, such
as the number of instances or state it is expected to be in.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/droplet-updated.json %}
{% endhighlight %}
</div>

It simply states which droplets it is running, including its version, index,
state (such as `RUNNING`), and when it was started.

### Response

There is no response for this message.

### Requested By

It is triggered by the following components:

* Cloud Controller

### Triggered By

It is triggered by the following actions:

* The application's state being changed
* The application's instances property being changed
