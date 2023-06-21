---
tags: definition
aliases: 
sources: https://man7.org/linux/man-pages/man5/fstab.5.html
---

Configuration file containing static information about the filesystems

Only read by programs, and not written; it is the duty of the system administrator to properly create and maintain this file.

Used by [[fsck]], mount, and umount

# Entry structure
Lines starting with `#` are comments. Blank lines are ignored.

           LABEL=t-home2   /home      ext4    defaults,auto_da_alloc      0  2