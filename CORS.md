---
aliases: Cross-Origin Resource Sharing, same-origin policy
tags: security
sources: https://blog.logrocket.com/the-ultimate-guide-to-enabling-cross-origin-resource-sharing-cors/
---
# The same-origin policy
In simple terms, the same-origin policy is the web version of “don’t talk to strangers” incorporated by the browser.

Origin = scheme (HTTP, HTTPS, FTP etc.) +  domain + port

# Same-origin or Cross-origin requests in example
Assuming our origin is `http://localhost:3000`

Origin | Request Type | Reason
--- | --- |---
http://localhost:3000/about | Same-origin | The path “/about” is not considered as a part of the origin
http://localhost:3000/shop/product.html|Same-origin|The path “/shop/product.html” is not considered as a part of the origin
http://localhost:5000|Cross-origin|Different port (5000 instead of 3000)
https://localhost:3000|Cross-origin|Different scheme (HTTPS instead of HTTP)
https://blog.logrocket.com|Cross-origin|Different scheme, domain, and port
https://api.localhost:3000 |Cross-site

This is the reason why your frontend running on `http://localhost:3000` cannot make API calls to your server running `http://localhost:5000` or any other

# CORS
> An HTTP header-based protocol that enables resource sharing between different origins

`Access-Control-Allow-Origin` : {allowed origins}, `*`
`Access-Control-Allow-Methods` : `POST`, `PUT`, `PATCH`, `DELETE`, `GET`
`Access-Control-Allow-Headers` : list of allowed HTTP headers
`Access-Control-Max-Age` : cache the result of [[pre-flighted requests]] for a certain amount of time