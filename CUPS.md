---
tags: definition
aliases: 
sources: https://github.com/OpenPrinting/cups, https://openprinting.github.io/cups/doc/spec-design.html, https://en.wikipedia.org/wiki/CUPS
---

> Common UNIX Printing System

Standards-based, open source modular printing system for Unix-like OS which allows a computer to act as a [[print server]]

# Installation

For example, using [[APT]]
```bash
sudo apt-get update && sudo apt-get install cups cups-client lpr
```

To use CUPS its required to have `lpadmin` group's permissions

# Consists
- [[SPOOL|printing spooler]]
- Printing scheduler
- Backend system that sends this data to the print device

CUPS includes a web-based administration tool that allows to manage printers, classes, and jobs on a server.

Uses the [[IPP]]