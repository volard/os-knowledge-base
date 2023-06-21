---
tags: definition
aliases: Wake-on-LAN, WOL, wake on WAN, remote wake-up, power on by LAN, power up by LAN, resume by LAN, resume on LAN, wake up on LAN, Wake on Wireless LAN, WoWLAN
sources: https://www.howtogeek.com/70374/how-to-geek-explains-what-is-wake-on-lan-and-how-do-i-enable-it, https://www.depicus.com/wake-on-lan/wake-on-lan-port-numbers
---

![[WOL in a nutshell.png]]

> Wake-on-LAN

An [[Ethernet]] or Token Ring computer networking standard that allows a computer to be turned on or awakened from sleep mode by a network message.

If the computer being awakened is communicating via Wi-Fi, a supplementary standard called Wake on Wireless LAN (WoWLAN) must be employed

The message is usually sent within [[LAN]], but it is possible to WOL from another network using subnet directed broadcasts or a WoL gateway service.

# Magic packet

# Initiate WOL
Sending a magic packet requires knowledge of the target computer's [[MAC|MAC address]]

## Send magic packet
Use ready software like https://www.depicus.com/wake-on-lan/woli

Or write cringe script like
```python
import socket

def wol(lunaMacAddress: bytes):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

    magic = b'\xff' * 6 + lunaMacAddress * 16
    s.sendto(magic, ('<broadcast>', 7))

if __name__ == '__main__':
    # pass to wol the mac address of the Ethernet port of the appliance to wakeup
    wol(b'\x00\x15\xB2\xAA\x5B\x00')
```

# Receive WOL
## Linux
See [[ethtool]]
```bash
sudo apt-get install ethtool
# Check compatibility
sudo ethtool eth0
# Enable WOL
sudo ethtool -s eth0 wol g
```

## Port
### Local Area Network
You don't need to worry about the port number on a LAN because we don't have to worry about routers (unless you are on a large network). Just use the default port `7`

### Internet
You need to set up your destination [[firewall]]/[[router]] to allow `Subnet Directed Broadcasts`. Most routers and firewalls disable this option by default.
You will then need to allow traffic through on your firewall/router on a specific port (aka a [[DHCP]] reservation)