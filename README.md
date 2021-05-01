# MicroMifedom

A request router that brings a touch of architecture to your otherwise disparate mifen, providing them a shared
subdomain, auth realm, api gateway, and other fundamental services that can quickly bring your **Mifedom** to life

----

_**SUPPORT REMINDER**:  Given the shared common purpose, **we are quick to respond to the needs of any hackathon use cases!**_

----

This repo is intended to unite Micro-cosm mifen.  By providing just one simple approach, in this case using the Firebase platform, the
hope is that loosely-coupled mifen reveal new ways to reason about complex systems.

This repo assumes access to a running GCP project that provides access to local installations of **gcloud** and **firebase** CLIs.

**Use freely, but please befit security rigor to your purpose.**

----
## Deploy

###### After reviewing and appropriately updating the firebase.json(working example provided) and adding your .firebaserc file, just run the following to deploy to your existing Firebase project
`firebase deploy`

**NOTE:** Running this assumes that any services included in the gateway are pointing to live instances, otherwise the deployment will error that indicates the unavailable service.

## Log Levels
    debug:          debugging info about the plugins runloop and each individual plugin or other components.
                    Very chatty like Jeremy said, but useful when debugging, e.g. is plugin xyz running?
    info/notice:    informational log about normal behavior, can mostly be ignored.
                    Kong does not make a big difference between both of these levels (although syslog(2) does).
    warn:           abnormal behavior, not resulting in dropped transactions, but should be investigated.
    error:          an error that resulted in a request being dropped. The client probably received an HTTP 500 response or similar.
                    Monitoring the rate of these logs is important, as they can happen occasionally,
                    but an abnormally high rate of error logs can mean that something is wrong and a large number of clients are suffering from it.
    crit:           Kong is operating in critical conditions; most likely not working for a large number of clients.
                    This log level warrants waking somebody up from your team.


## Locally Registered Ports

5000 mifedom

8000 mifedom kong api

9091 mifedom api 1

9091 mifedom api 2

9091 mifedom api 3
