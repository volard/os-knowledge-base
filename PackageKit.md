---
tags: definition
aliases: 
sources: https://www.freedesktop.org/software/PackageKit
---

A system designed to make installing and updating software easier. The primary design goal is to unify all the software graphical tools used in different distributions, and use some of the latest technology like [[Polkit]].

Formally, it is a D-Bus abstraction layer that allows the session user to manage packages in a secure way using a cross-distro, cross-architecture API.

Runs as a system-activated daemon, named `packagekitd`, which abstracts out differences between the different systems