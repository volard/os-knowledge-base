
---
aliases: 
tags: security
sources: https://http.dev/authentication, https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication#authentication_schemes, https://www.devglan.com/spring-security/spring-boot-security-rest-basic-authentication
---
HTTP provides a general framework for access control and authentication

When a client attempts to access a resource without first authenticating, the server may return a `401 Unauthorized` [[Status codes|HTTP status code]] with (maybe) [[WWW-Authenticate response header]], which will inform the client what authorization methods (schemes) it supports.