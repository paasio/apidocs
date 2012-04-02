---
layout: post
category: cloud-controller
title: "Publish: vcap.stager.{queue}"
---

The `vcap.stager.{queue}` message is sent out by the Cloud Controller when
using the external stager.  The `{queue}` defaults to `staging` normally.

The code for sending this message isn't within the Cloud Controller itself,
but loaded through `vcap/stager` in the controller.

This message is sent out whenever the Cloud Controller needs to stage an
application.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/vcap-stager-queue.json %}
{% endhighlight %}
</div>

### Reply

This message expects no explicit reply.  However, it will expect a message
to be sent back on the `notify_subj` channel.  The Cloud Controller will create
a temporary subscription on that channel.

For more details on the reply, see the [Stager details](/stager/subscribe-vcap-stager-queue).
