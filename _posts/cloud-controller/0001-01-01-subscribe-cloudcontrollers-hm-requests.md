---
layout: post
category: cloud-controller
title: "Subscribe: cloudcontrollers.hm.requests"
---

The `cloudcontrollers.hm.requests` message is used by the Health Manager to
request the Cloud Controller to perform some action such as starting or stopping
application instances.

Within Cloud Foundry, only the Cloud Controller performs actions to start and
stop applications.  The Health Manager will request the Cloud Controller to
take some action, but doesn't take any itself.

### Request

<div class="js example">
{% highlight js %}
{% include snippets/cloudcontrollers-hm-requests.json %}
{% endhighlight %}
</div>

The `op` attribute will be either `START` or `STOP`.  If it is `STOP`, then the
`indices` attribute is ommitted and it instead includes `instances`.

### Response

No response is sent back to this mesage.

### Requested By

It is triggered by the following components:

* [Health Manager](/health-manager)

### Triggered By

It is triggered by the following actions:

* If the Health Manager detects an extra instance of an application is running.
* If the Health Manager detects an old version of an application is running.
* If the Health Manager detects an application instance is down or instances
are missing.
