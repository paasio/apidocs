---
layout: post
category: cloud-controller
title: "Publish: vcap.cc.events"
---

The `vcap.cc.events` message is sent out by the Cloud Controller whenever
actions or requests are made on the site.  It a generic activity log of that
matches what is logged to the Cloud Controller's log file.

There are no known subscribers to the messages.

### Message

<div class="js example">
{% highlight js %}
{% include snippets/vcap-cc-events.json %}
{% endhighlight %}
</div>
