# Cloud Foundry API Documentation

This project is to provide thorough documentation of the main communication
points between [Cloud Foundry](http://github.com/cloudfoundry/vcap) components.

The primary emphasis will be on HTTP endpoints within the cloud controller,
NATS messages that are published/subscribed by the components, as well as the
varz/healthz data exposed by most components.

## Contributing

Contributing to the documentation is as easy as:

* Fork the repository on GitHub
* Make your changes
* Send a pull request

## Generating the site locally

To generate the site locally, simply run the following:

```console
$ bundle install
$ jekyll
$ rackup
```

The site will then be accessible on [[http://localhost:9292]].

## Capturing output

Since the documentation focuses on the raw messages, you will often times
need to capture those messages from a running Cloud Foundry instance.  Use
the tips below to get some of the raw output.

Whenever you are adding raw output, be sure to sanitize it before committing.
This will help to avoid accidentially exposing sensitive information.

### NATS messages

To capture NATS messages, the easiest way is to listen in on a running Cloud
Foundry instance using the `nats-sub` tool included with NATS.

This will show you any `dea.advertise` message going through NATS:

```console
$ nats-sub dea.advertise
```

If you have protected your NATS instance, then you can pass the connection
parameters just as they'd be in the `mbus` setting for the component configuration:

```console
$ nats-sub -s nats://localhost:4222/ dea.advertise
```

You can also specify wildcards, however wildcards don't go beyond periods. For
instance:

```console
$ nats-sub -s nats://localhost:4222/ '*.*'
```

This will return messages for `dea.advertise`, `router.start`, and others that
include just a single period.  It won't include `dea.{uuid}.start` though.

### NATS publish/subscribe messages

Finding which messages a components published or subscribes to on the NATS bus
can be done rather low tech.  Personally, I've just done the following within
whichever component I'm curious about:

```console
$ grep -R publish *
$ grep -R timed_request *
$ grep -R subscribe *
```

Typically ignore the occurances in the spec folders and look for the ones in lib
or other portions.  Don't look specfically for `NATS.publish` because some
components might have the NATS connection as a local variable and do a
`@nats_conn.publish`.

### HTTP endpoints

To capture raw HTTP messages, a common tool that can be useful if you're on
OS X would be [HTTP Client](http://ditchnet.org/httpclient/).  It allows
you to do raw HTTP requests, specifying any headers or request body you might
need.

When issuing raw HTTP requests against the cloud controller, there are a few
headers that you will commonly need.  These include:

* `Authorization` - If the endpoint requires you to log in, set this header to
your user token.  If you have logged into the site with VMC, you can get your
token from `~/.vmc_token`.
* `Content-Type` - Some of the endpoints, even for GET requests, seem to want
the content-type set to `application/json`. In some places I've used `Accept`,
however a before hook is used in order to specifically want the content-type.
* `X-VCAP-Service-Token` - This header is used with the service gateways and
the service endpoints of the cloud controller.  It is set to the token value
configured in your cloud controller configuration.
