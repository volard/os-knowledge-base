---
tags: definition
aliases: 
sources: 
---

# Address format
32 bits (four bytes)
Form: `xxx.xxx.xxx.xxx`, where `xxx` are three, or fewer, numbers between 0 and 255

## Subnetting
IP address is made up of network bits and host bits

## [[classfull network|IP classification]]

## [[CIDR]] notation

> A compact representation of an IP address and its associated network mask


CIDR notation `/24` is equivalent to following mask

|TYPE|DECIMAL|BINARY|
|---|---|---|
|Subnet mask|255.255.255.0|11111111.11111111.11111111.00000000|


The decimal number after `/` is the count of consecutive leading `1` s bits (from left to right) in the network mask.

The address may denote a specific interface address or it may be the beginning address of an entire network (using a host identifier of 0)

###  Examples
- `198.51.100.14/24` represents the [[IPv4]] address `198.51.100.14` and its associated network prefix `198.51.100.0`, or equivalently, its subnet mask `255.255.255.0`, which has 24 leading `1` s bits.
- `198.51.100.0/22` represents the 1024 [[IPv4]] addresses from `198.51.100.0` to `198.51.103.255`
- `2001:db8::/48` represents the [[IPv6]] addresses from `2001:db8:0:0:0:0:0:0` to `2001:db8:0:ffff:ffff:ffff:ffff:ffff`
- `::1/128` represents the [[IPv6]] [[loopback]] address. Its prefix length is 128 which is the number of bits in the address

The number of addresses inside a network or subnet may be calculated as 2^{address length − prefix length}, where address length is `128` for [[IPv6]] and `32` for [[IPv4]]. 
For example, in [[IPv4]], the prefix length `/29` gives: $2^{32 − 29}$ = $2^3$ = 8 addresses.

