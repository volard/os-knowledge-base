---
sources: https://learn.microsoft.com/en-us/windows-server/get-started/hardware-requirements
---

The highly diverse scope of potential deployments makes it unrealistic to state recommended hardware requirements that would be generally applicable. Consult documentation for each of the server roles you intend to deploy for more details about the resource needs of particular server roles.

# Processor
- 1.4 GHz 64-bit processor
- Compatible with x64 instruction set
- Supports NX and DEP
- Supports CMPXCHG16b, LAHF/SAHF, and PrefetchW
- Supports Second Level Address Translation (EPT or NPT)

Use [[coreinfo]]

# RAM
- 512 MB (2 GB for Server with Desktop Experience)
- ECC (Error Correcting Code) type or similar technology, for physical host deployments
- More than 800 MB RAM to the virtual machine on which you intend to install server

# Storage controller and disk space requirements
- 32 GB
- Storage adapter that is compliant with the [[PCI]]
- Hard disk drives must not be PATA
- Server does not allow ATA/PATA/IDE/EIDE for boot, page, or data drives.

# Network adapter requirements
- An [[Ethernet]] adapter capable of at least 1 gigabit per second throughput
- Compliant with the [[PCI]]

KDNet debugging is useful, but not a requirement

