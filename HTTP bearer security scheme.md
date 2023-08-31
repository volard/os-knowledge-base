---
aliases: bearer scheme
tags: security
sources: https://swagger.io/docs/specification/authentication/bearer-authentication/, https://www.ibm.com/docs/en/api-connect/saas?topic=components-defining-http-bearer-security-scheme
---
> HTTP bearer security scheme is used to generate access `tokens` called `bearer tokens` that are exchanged between the server and the client

“Bearer authentication” can be understood as “give access to the bearer of this token.”

The Bearer authentication scheme was originally created as part of [[OAuth|OAuth 2.0]] in [RFC 6750](https://datatracker.ietf.org/doc/html/rfc6750), but is sometimes also used on its own. Similarly to [[Basic authentication scheme]], Bearer authentication should only be used over HTTPS (SSL).