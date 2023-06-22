---
tags: definition
aliases: SAM
sources: 
---

> A database file in Windows that stores users' passwords

The user passwords are stored in a hashed format in a registry hive either as an LM hash or as an [[NTLM]] hash. This file can be found in `%SystemRoot%/system32/config/SAM` and is mounted on `HKLM/SAM` and `SYSTEM` privileges are required to view it.