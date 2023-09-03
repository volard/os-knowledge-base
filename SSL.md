---
tags:
  - security
aliases:
  - Secure Sockets Layer
  - SSL
  - SSL handshake
  - TLS
  - Transport Layer Security
sources: https://www.cloudflare.com/learning/ssl/what-is-ssl/
---
> Old, vulnerable, deprecated security encryption-based protocol for authentication and integrity (signing) within Internet communications. 

> TLS is the same, but modern and strong 
# WTF with a name SSL/TLS
- SSL - predecessor to the modern Transport Layer Security (TLS) encryption used today.
- The differences between the final version of SSL (3.0) and the first version of TLS are not drastic.
- Since they are so closely related, the two terms are often used interchangeably. Some people still use SSL to refer to TLS, others use the term "SSL/TLS encryption"

# Types
- One-Way : server shares its public certificate with the clients
- Two-Way (Mutual TLS - `mTLS`) : both client and server share their public certificates with each other

# How it works

The architecture is built around [[Public-key cryptography]] used in [[TLS certificate|certificate]]
