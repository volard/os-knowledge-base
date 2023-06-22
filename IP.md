---
tags: definition
aliases: Internet Protocol
source: https://www.pcmag.com/how-to/how-to-find-your-ip-address
---

> [[internet]] [[protocol]] -  network layer communications protocol in the [[Internet protocol suite]] for relaying datagrams

# Common format of [[packet|packets]]
## IP header
- source [[IP address]]
- destination [[IP address]]
- metadata
- [[TTL]]
- IP version
- etc.

## Payload
Typically a [[datagram]] 
- or segment of the higher-level transport layer protocol, 
- or data for an internet layer (e.g., [[ICMP]] or ICMPv6), 
- or link layer (e.g., OSPF)

# Versions
- [[IPv4]]
- IPv5 - just died 😔
- [[IPv6]]


# Relationships between IPv6 and IPv4 ❤️
The coexistence is expected to be based on dual-stack, tunneling or translation mechanisms. Dual-stack implementations required two parallel logical networks, increasing cost and complexity of the network

[[IPv4 Residual Deployment]]