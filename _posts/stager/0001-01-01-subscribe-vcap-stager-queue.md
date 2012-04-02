---
layout: post
category: stager
title: "Subscribe: vcap.stager.{queue}"
---

The `vcap.stager.{queue}` message is sent out by the Cloud Controller](/cloud-controller)
when using the external stager.  The `{queue}` defaults to `staging` normally.

This message is sent out whenever the Cloud Controller needs to stage an
application.  The stager will download the application code form the included
url, run the specified framework plugin, and then upload it back and send a reply
with the staging output.

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

<div class="js example">
{% highlight js %}
{% include snippets/cc-staging-uuid.json %}
{% endhighlight %}
</div>

The `notify_subj` is likely used so the Cloud Controller doesn't need to block
for a `timed_request` while staging is running.  Instead it can just use a
temporary subscription and continue processing whenever that comes in.

To indicate that the staging has failed, an `error` attribute should be added
containing some error metadata including the class and details.

<div class="js example">
{% highlight js %}
{% include snippets/cc-staging-uuid-error.json %}
{% endhighlight %}
</div>

The `errors` attribute is a string representation of another JSON object, which
contains a `class` corresponding to a Ruby class and an optional `details`
attribute.

The current built-in task error types within Cloud Foundry include:

* `VCAP::Stager::AppDownloadError`
* `VCAP::Stager::AppUnzipError`
* `VCAP::Stager::StagingPluginError`
* `VCAP::Stager::StagingTimeoutError`
* `VCAP::Stager::DropletCreationError`
* `VCAP::Stager::DropletUploadError`
* `VCAP::Stager::InternalError`

### Requested By

It is triggered by the following components:

* [Cloud Controller](/cloud-controller)

### Triggered By

It is triggered by the following actions:

* New code is uploaded
* Potentially when service bindings are changed
* Potentially when environment variables are changed
