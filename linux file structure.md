---
tags:
  - review
aliases: 
sources:
  - https://unix.stackexchange.com/questions/27613/where-should-i-place-a-downloaded-tarball
---
- `/opt` is used for manually installed programs with self contained directories
	- Programs in self contained directories will not show up in your PATH by default, but generally this is solved by creating symlinks in `/usr/local/bin` to any binaries under `/opt`
- `/usr/local` is the other location for manually installed files, but it's generally only used for programs that split their files:
	- `/usr/local/bin` for executables
	- `/usr/local/lib` for libraries, etc.

Using `/opt` and `/usr/local` avoids potential conflicts between manually installed files and files installed by a package management system ([[YUM]], [[APT]], etc. generally install files in `/usr/bin`, `/usr/lib`, etc.)

But ultimately the great power of Linux is that you can do it however you want, there are so many options. That is why you can't find a definitive location for your tarball extracted programs


- `/usr/share/applications/` - desktop files (may also be inside `~/.local/share/applications` for single user scope) 