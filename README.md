# MicroMifedom

A request router that brings a touch of architecture to otherwise disparate mifen.  Provides several fundamental shared services, that among others include:
common subdomain, unified auth realm, and serverless API gateway that can quickly bring a **Mifedom** to life

----

_**SUPPORT REMINDER**:  Given the shared common purpose, **we strive to quickly respond to hackathon use cases**_.

----

This repo is intended to unite Micro-cosm mifen.  By providing just one simple approach that quickly binds loosely-coupled mifen together, we hope
to reveal new ways to reason about complex systems.

This repo assumes access to a running GCP project that provides access to local installations of **gcloud** and **firebase** CLIs.

**Use freely, but please befit security rigor to your purpose.**

----
## Deploy

###### After reviewing and appropriately updating the firebase.json(working example provided) and adding your .firebaserc file, just run the following to deploy to your existing Firebase project
`firebase deploy`

**NOTE:** Running this assumes that any services included in the gateway are pointing to live instances, otherwise the deployment will error that indicates the unavailable service.

## Log Levels
    debug:          Debugging info about the plugins runloop and each individual plugin or other components at a tedious level.
    info/notice:    Both levels provid similarly esoteric messages, primarily capturing safely-ignored normal operating behavior.
    warn:           Captures abnormal behavior, typically not resulting in dropped requests, but certainly worthy of attention.
    error:          Captures true error conditions resulting in dropped requests, likely recognized by users via HTTP 50x-ish response.
                    Monitoring the rate of these logs is important, as they can happen occasionally. An abnormally high rate of error logs 
                    probably is a sign that very visible breaks a occurring frequently.
    crit:           Critical conditions exist that likely impact all users, you might should wake somebody up for this one :)


## Locally Registered Ports

- 5000 - mifedom

- 8000 - mifedom kong api
