---
tags: definition
source: https://www.baeldung.com/linux/network-interface-configure
aliases: WNIC, VNI, NIC, virtual network interface, physical network interface
---

the point of connection between a computer and a network.

In other words, how the Linux system links up the software side of networking to the hardware side.

# Types

- Physical network interface represents a network hardware device such as **NIC** (**Network Interface Card** aka **network adapter** or **Ethernet card**), **WNIC** (Wireless Network Interface Card), or a modem.
As soon as the device driver is loaded into the Kernel a corresponding physical network interface becomes present and available.

- **Virtual network interface** (VNI) does not represent a hardware device but is linked to a network device. It can be associated with a physical or virtual interface. (or be even standalone like [[loopback]])