---
tags: definition
aliases: DNS resolver, resolution request
sources: 
---

> [[Domain]] name system

An essential process for the Internet; it matches human-readable domain names to machine-readable [[IP address|IP addresses]], enabling users to load websites and applications without memorizing a bunch of numbers.

It's decentralized system (no way to store all site names in one huge place) aiming mostly to provide **availability** over **consistency** according to [[CAP theorem]]

Names itself structured in hierarchical tree-like [[Domain namespace|namespace]]

# DNS Resolution process

At a high level of abstraction, DNS is built upon a client-server architecture model.
Client here called as `DNS resolver`.

So `DNS resolver` initiates request called `resolution request` .

The first [[Domain Name Server|server]] that gets the query might not be able to answer the query by itself. So, it might seek answers from another [[Domain Name Server|DNS server]], and while doing that, it takes the role of a `DNS resolver`.