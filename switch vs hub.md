The role of an [[network switch|Ethernet switch]] is to forward [[Ethernet]] frames from one port to another. 

The presence of a [[forwarding table|FIB]] is one attribute that separates a switch from a hub. 

Without a functional FIB, all frames received by a network switch would be echoed back out to all other ports, much like an Ethernet hub. 

In bridging packets between ports, a switch should only emit a frame on the port where the destination network device resides ([[routing schemes|unicast]]), unless the frame is for all nodes on the switch ([[routing schemes|broadcast]]), multiple nodes ([[routing schemes|multicast]]) or if the switch doesn't know where the destination device resides (unicast flood).

Switches learn the port on which they first saw a particular source address and associate that port with that address. When the bridge subsequently receives a frame with a destination address in its FIB, it sends the frame out the port stored in the FIB entry.