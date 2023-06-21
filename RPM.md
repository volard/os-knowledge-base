---
tags: definition
aliases: SRPM, BRPM, NOSRC
sources: 
---

> RPM Package Manager (its recursive)

[[FOSS]] package management system

# Format
Package - single file
`.noarch.rpm` for architecture independent content (graphics, text, interpreted scripts etc.)

## Binary
`<name>-<version>-<release>.<architecture>.rpm` for binaries.

- Lead, which identifies the file as an RPM file
- Signature
- Header, with metadata (package name, version, architecture, file list, etc.)
- A file archive, which usually is in cpio (rpm2cpio) format, compressed with gzip (standard though), xz, zstd, bzip2, lzma, lzip, xar.

## Source
`<name>-<version>-<release>.src.rpm` for source packages **SRPM**

## SPEC
File describing the software and how it is built

### No source
Version of SRPM. It contains "SPEC" file and optionally patches, but does not include sources (usually because of license)

# Front-ends
- [[YUM]]
- [[DNF]]
- [[Zypper]]