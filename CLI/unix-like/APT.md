>Advanced Packaging Tool
>Package management utility for Debian based distributions.

APT was initially a front end for [[dpkg]], but later expanded to work with the [[RPM]] as well, using front-end `APT-RPM` for it.

Recommended replacement for `apt-get` when used interactively in Ubuntu versions >=16.04

More information: https://manpages.debian.org/latest/apt/apt.8.html
# Usage
```bash
- Update the list of available packages and versions (it is recommended to run this before other apt commands):
   sudo apt update

 - Search for a given package:
   apt search {{package}}

 - Show information for a package:
   apt show {{package}}

 - Install or updat a package:
   sudo apt install {{package}}

 - Remove a package (using purge instead also removes its configuration files):
   sudo apt remove {{package}}

 - Upgrade all installed packages to their newest available versions:
   sudo apt upgrade

 - List installed packages:
   apt list --installed
```

# Configuration
`apt-config` is the APT Configuration Query program

- `/etc/apt/sources.list`: Locations to fetch packages from.
- `/etc/apt/sources.list.d/`: Additional source list fragments.
- `/etc/apt/apt.conf`:  configuration file.
- `/etc/apt/apt.conf.d/`:  configuration file fragments.
- `/etc/apt/preferences.d/`: Directory with version preferences files. This is where `pinning` is specified, i.e. a preference to get certain packages from a separate source or from a different version of a distribution.
- `/var/cache/apt/archives/`: Storage area for retrieved package files.
- `/var/cache/apt/archives/partial/`: Storage area for package files in transit.
- `/var/lib/apt/lists/`: Storage area for state information for each package resource specified in `sources.list`
- `/var/lib/apt/lists/partial/`: Storage area for state information in transit.

# Front-ends
- Synaptic
- Ubuntu Software Center
- aptitude
- KPackage