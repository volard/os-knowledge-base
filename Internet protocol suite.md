---
tags: definition
aliases: TCP/IP, protocol stack
sources: 
---

A framework for organizing the set of communication protocols used in the Internet and similar computer networks

An implementation of the layers for a particular application forms a **protocol stack**.

# Architecture


# Implementations
The Internet protocol suite does not presume any specific hardware or software environment.

A minimal implementation of TCP/IP includes the following: 
- [[IP|Internet Protocol]] (IP)
- [[ARP|Address Resolution Protocol]] (ARP)
- [[ICMP|Internet Control Message Protocol]] (ICMP)
- Transmission Control Protocol (TCP)
- User Datagram Protocol (UDP)
- Internet Group Management Protocol ([[IGMP]])

But the stack can be formed in some different form. 

For example, not a long time ago, the same TCP/IPs implementations hadn't IPv6 support, but when the quantity of addresses limitation required new technologies, smart guys created new protocols, some translation mechanisms or smth and brought all new stuff to implementations, and holla we have the same layering model with blackjack and IPv6.

Or you can implement this model using silly [[IP]] or encrypted chad-version [[IPsec]]