---
layout: post
category: router
title: "Publish: router.start"
---

The `router.start` message is sent out by the router in order for
the DEAs to respond back with `router.register` messages.

The message is sent out when the router is starting up, as well as on a 30
second timer.  The timer value is hard-coded into the router at
`lib/router/const.rb` as `START_SWEEPER`.

If you are running multiple routers, each one will be sending this message out
every 30 seconds.

Part of the purpose of this message is to ensure the list of application
endpoints is fresh.  The router has behavior to drop an application instance
from its list if it fails to receive a response from it, and the periodic
refresh will ensure that instance is added back if the DEA still considers it
as health.

<div class="js example">
{% highlight js %}
{% include snippets/router-start.json %}
{% endhighlight %}
</div>

The router expects no explicit reply.  It does expect separate `router.register`
messages to be processed through its subscription.
