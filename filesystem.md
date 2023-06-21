---
tags: definition
aliases: file system, file systems, filesystems, fs, filesystem, file, FS
sources: https://www.baeldung.com/linux/filesystems
---

Method and data structure that the OS uses to control how data and free space is managed.

**File** - group of data.
It has a 
- data itself
- [[metadata]] 
- extension

Also [[NFS]]

# Architecture
It varies actually - some usually separated functions can be combined sometimes.

The core principles build around [[API|APIs]]

There are also FS namespaces - e.g. for user, for programs and so on but usually FS relies on hierarchy.

Files can be organized in different data structures e.g.
- Sequences of data blocks representing files (easiest approach imo)
- Linked list
- etc.
And each data structure can be implemented in different ways