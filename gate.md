---
tags: definition
aliases: call gates, gates
sources: https://stackoverflow.com/questions/3425085/the-difference-between-call-gate-interrupt-gate-trap-gate#3425381
---

Mechanism in Intel's x86 architecture architecture is used to transfer control of execution across segments.


# Types of Gates
Despite the fact that all gates are similar, they have some differences because originally Intel engineers thought that different gates would be used for different purposes.

## Call gate
Uses the `CALL` and `JMP` instructions.
Transfer control from lower privilege code to higher privilege code.
Are (or have been, probably) gradually abandoned in favor of the `SYSENTER`/`SYSEXIT` mechanism, which is faster.

## Task gate
Used for hardware multitasking support.

...

