---
tags: definition
aliases: Delivery schemes, unicast, broadcast, multicast, anycast
sources: 
---

# Unicast

```mermaid
%%{ init: { 'flowchart': { 'curve': 'basis' } } }%%
flowchart LR 
	id1((" ")) ---> id2((" "))
	id3((" "))
	id4((" "))
	id5((" "))
	
	style id1 fill:#f9f
	style id2 fill:#3f3
	style id3 fill:#f96
	style id4 fill:#f96
	style id5 fill:#f96
```

# Broadcast

```mermaid
%%{ init: { 'flowchart': { 'curve': 'basis' } } }%%
flowchart LR 
	id1((" ")) ---> id2((" "))
	id1 ---> id3((" "))
	id1 ---> id4((" "))
	id1 ---> id5((" "))
	
	style id1 fill:#f9f
	style id2 fill:#3f3
	style id3 fill:#3f3
	style id4 fill:#3f3
	style id5 fill:#3f3
```
# Multicast
Delivers a message to a group of nodes **that have expressed interest** in receiving the message using a _one-to-many-of-many_ or _many-to-many-of-many_ association; datagrams are routed simultaneously in a single transmission to many recipients. 
Multicast differs from broadcast in that the destination address designates a subset, not necessarily all, of the accessible nodes.

```mermaid
%%{ init: { 'flowchart': { 'curve': 'basis' } } }%%
flowchart LR 
	id1((" ")) ---> id2((" "))
	id1 ---> id3((" "))
	id4((" "))
	id5((" "))
	
	style id1 fill:#f9f
	style id2 fill:#3f3
	style id3 fill:#3f3
	style id4 fill:#f96
	style id5 fill:#3f3
```
# Anycast

```mermaid
%%{ init: { 'flowchart': { 'curve': 'basis' } } }%%
flowchart LR 
	id1((" ")) ---> id2((" "))
	id3((" "))
	id4((" "))
	id5((" "))
	
	style id1 fill:#f9f
	style id2 fill:#3f3
	style id3 fill:#3f3
	style id4 fill:#f96
	style id5 fill:#3f3
```
