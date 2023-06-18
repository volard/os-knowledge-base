---
tags: definition
sources: https://www.cloudflare.com/learning/network-layer/what-is-a-computer-port/
---

> virtual point where network connections start and end

Each port is associated with a specific process or service (piece of software)

Ports allow computers to differentiate between different kinds of traffic: emails go to a different port than webpages, for instance, even though both reach a computer over the same Internet connection.

# Port number
Each port identified by a unique number.
There are 65,535 possible port numbers

Some of them reserved for certain protocols (e.g. all HTTP goes to 80)

Ports | Used by 
---------- | -------
**20 21** |[[FTP]]
**22** |[[SSH]]
**25** |Historically, [[SMTP]]
**53** |[[DNS]] 
**80** |[[HTTP]]
**123** |[[NTP]]
**179** |[[BGP]]
**443** |[[HTTPS]]
**500**|[[ISAKMP]]
**587** |SMTP with encryption.
**3389** |[[RDP]]
