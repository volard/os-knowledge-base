---
tags: definition
aliases: Compatibility Support Module, BIOS-MBR, BIOS-GPT, CSM
sources: 
---

> Compatibility Support Module

[[UEFI]] support booting in BIOS mode from [[MBR]]-partitioned disks through the  that provides legacy BIOS compatibility. 

In this scenario, booting is performed in the same way as on legacy BIOS-based systems, by ignoring the partition table and relying on the content of a boot sector

BIOS-style booting called _BIOS-MBR_, regardless of it being performed on UEFI or BIOS. 
Booting legacy BIOS systems from GPT disks is also possible, and such a boot scheme is commonly called _BIOS-GPT_.