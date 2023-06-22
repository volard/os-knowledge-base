---
tags: definition
aliases: routing information base, RIB
sources: 
---

A data table stored in a [[router]] or a network host that lists the routes to particular [[network]] destinations, and in some cases, distances associated with those routes.

The construction of these tables is the primary goal of [[routing protocol|routing protocols]]

Used to generate information for simpler [[forwarding table]]

# Content
Always at least three information fields:
1. network identifier
2. routing metric
3. next hop

Depending on the application and implementation, it can also contain additional values like
1. _quality of service_ associated with the route. For example, the U flag indicates that an IP route is up.
2. _filtering criteria_: [Access-control lists](https://en.wikipedia.org/wiki/Access-control_list "Access-control list") associated with the route
3. _interface_: Such as eth0 for the first Ethernet card, eth1 for the second Ethernet card, etc.

|Network destination|Netmask|Gateway|Interface|Metric|
|---|---|---|---|---|
|0.0.0.0|0.0.0.0|192.168.0.1|192.168.0.100|10|
|127.0.0.0|255.0.0.0|127.0.0.1|127.0.0.1|1|
|192.168.0.0|255.255.255.0|192.168.0.100|192.168.0.100|10|
|192.168.0.100|255.255.255.255|127.0.0.1|127.0.0.1|10|
|192.168.0.1|255.255.255.255|192.168.0.100|192.168.0.100|10|

