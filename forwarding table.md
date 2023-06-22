---
tags: definition
aliases: forwarding information base, FIB, forwarding table, MAC table
sources: 
---

> A dynamic table that maps [[MAC|MAC addresses]] to [[networking port|ports]]

Can be used at the data link and applications layers.

Used in network [[network bridging|bridging]], [[routing]], and similar functions to find the proper output network interface controller to which the input interface should forward a [[packet]]

The essential mechanism that separates network switches from Ethernet hubs

[[CAM|Content Addressable Memory]] (CAM) is typically used to efficiently implement it