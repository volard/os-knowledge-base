---
tags: definition
aliases: 
sources: https://www.cloudflare.com/learning/network-layer/what-is-ipsec/
---

Group of protocols for securing IP connections between devices via adding [[encryption]] and authentication

[[AH]]

**Encapsulating Security Protocol (ESP):** ESP encrypts the IP header and the payload for each packet — unless transport mode is used, in which case it only encrypts the payload. ESP adds its own header and a trailer to each data packet.

**Security Association (SA):** SA refers to a number of protocols used for negotiating encryption keys and algorithms. One of the most common SA protocols is Internet Key Exchange (IKE).

Finally, while the **Internet Protocol (IP)** is not part of the IPsec suite, IPsec runs directly on top of IP.