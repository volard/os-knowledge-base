---
tags:
  - security
aliases:
  - DHKE
sources: []
---
> Cryptographic method to **securely exchange cryptographic keys** ([[key establishment|key exchange]]) over a public (insecure) channel.

Resistant to sniffing attacks (data interception), but it is **vulnerable** to [[man-in-the-middle attack]] (attacker secretly relays and possibly alters the communication between two parties).

Uses modular exponentiations in its calculations.
# Implementations
- using **discrete logarithms** (classical [**DHKE**](https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange) )
- using **elliptic-curve cryptography** ( [[ECDH]] )