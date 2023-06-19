---
tags: definition
aliases: ring 0, privilege layer
sources: 
---

mechanisms to protect data and functionality via building privilege `layers` (or `levels`, or `rings` - in depend of how to illustrate the mechanism)

Layers interconnected via [[gate|call gates]]

Usually ring 0 is the level with the most privileges and interacts most directly with the physical hardware such as certain CPU functionality (e.g. the control registers) and I/O controllers.

