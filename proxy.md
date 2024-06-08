---
tags:
  - definition
aliases:
  - proxy server
  - reverse proxy
  - forward proxy
  - open proxy
  - socket sharing
  - port sharing
sources:
---
>  A server application that acts as an intermediary between a client and the server

"Sharing the same IP and port among multiple processes" typically refers to a scenario where multiple server processes or applications are able to listen for and handle network traffic on the same IP address and port number. This is generally achieved through a technique called "socket sharing" or "port sharing."

# Types 
## Open

## Reverse
The use of "reverse" originates in its counterpart "forward proxy" since the reverse proxy sits closer to the web server and serves only a restricted set of websites.

A **reverse proxy** mainly protects the server, while a **forward proxy** protects the client.

Cool stuff, that reverse one can afford:
- Encryption/SSL acceleration
- [Load balancing](https://en.wikipedia.org/wiki/Load_balancing_(computing) "Load balancing (computing)"): the reverse proxy can distribute the load to several web servers
- Serve/cache static content && compression && spoon feeding
- Security: the proxy server is an additional layer of defense. However, it does not provide any protection from attacks against the web application or service itself
- 
- 
# Implementations
