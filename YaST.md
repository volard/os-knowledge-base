---
tags: definition
aliases: 
sources: https://yast.opensuse.org, https://yastgithubio.readthedocs.io/en/latest/architecture/
---

> Yet another Setup Tool

Installation and configuration modular tool for openSUSE and the SUSE Linux Enterprise

# Architecture
Has [[ncurses]] TUI and QT GUI variants. Both relies on [libYUI](https://github.com/libyui/libyui) widget library

Modular extensible structure forms a system in which different pieces, that can be implemented in several programming languages (C++, Perl, Ruby), interface with each other using a specific protocol called `YCP` (YaST Communication Protocol)

## Kind of components:
- Those providing functionality to others
- So-called clients

## Main components
- Components providing functionality to others
    - [SCR](https://yastgithubio.readthedocs.io/en/latest/architecture/#system-configuration-repository-scr): system configuration repository
    - [WFM](https://yastgithubio.readthedocs.io/en/latest/architecture/#work-flow-manager-wfm): work-flow manager
    - [UI](https://yastgithubio.readthedocs.io/en/latest/architecture/#user-interface): user interface
    - [Modules](https://yastgithubio.readthedocs.io/en/latest/architecture/#modules)
- Clients

---

AutoYaST enables you to export system-configuration settings and install them on thousands of other systems automatically.