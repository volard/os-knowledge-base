---
tags: definition
aliases: mask
sources: 
---

> Data that is used for [[bitwise operation|bitwise operations]]

Using a mask, multiple bits in a byte, nibble, etc. can be set either `on` or `off`, or inverted from `on` to `off` (or vice versa) in a single [[bitwise operation]]

# Bitmask functions
- Masking bits to 1 - via `OR 1`
- Masking bits to 0 - via `AND 0`
- Querying the status of a bit - via `AND`
- Toggling bit values - via `XOR`