---
tags:
  - review
aliases:
  - Network File System
sources:
---

> ~~Need For Speed~~ Network File System - **RPC-based** application-level protocol for the usage of network attached storage devices to mount to the system as they where on there local system

Used by [[NAS]]

`/etc/exports` file is the NFS server configuration file

Names and addresses for clients that should be allowed or denied access to NFS are kept in the `/etc/hosts.allow` and `/etc/hosts.deny`

---
- NFS servers use `nfsd` and `mountd` daemons
- clients use `rpcbind`

