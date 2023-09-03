---
tags:
  - security
aliases:
  - key
  - KDF
  - HMAC-based key derivation
  - key derivation algorithms
sources:
  - https://cryptobook.nakov.com/cryptography-overview
---
> Function which transforms a variable-length password (*human readable shitty unsecured string*) to fixed-length key (*binary, super hard and meaningless for human, shit*) using numbers, passwords or passphrases (salt)

To make key stronger, [[key stretching]] is used
# Strong key derivation functions
- `Bcrypt` (**older than `Scrypt`**, and is **less resistant** to ASIC and GPU attacks)
- `Scrypt` 
- Argon2 (super modern (newer than `Scrypt`) and cool stuff if configured correctly)

# Weak ones
- HKDF
- PBKDF2 (not GPU-resistant and not ASIC-resistant)