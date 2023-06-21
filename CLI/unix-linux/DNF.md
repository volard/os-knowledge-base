> Dandified YUM

Package manager for .rpm-based Linux distributions. Next-generation of [[YUM]]

# Usage
More information: https://dnf.readthedocs.io.

```bash
 - Upgrade installed packages to the newest available versions:
   sudo dnf upgrade

 - Search packages via keywords:
   dnf search {{keyword1 keyword2 ...}}

 - Display details about a package:
   dnf info {{package}}

 - Install a new package:
   sudo dnf install {{package1 package2 ...}}

 - Remove a package:
   sudo dnf remove {{package1 package2 ...}}

 - List installed packages:
   dnf list --installed

 - Find which packages provide a given command:
   dnf provides {{command}}
```

# Depends on
- [libsolv](https://github.com/openSUSE/libsolv) - dependency resolver.
- libdnf - high-level API for DNF
- librepo - API for downloading Linux repository metadata and packages
- libcomps - alternative for yum.comps library