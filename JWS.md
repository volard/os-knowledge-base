---
aliases: JSON Web signature
tags: security
sources: https://stackoverflow.com/questions/60538047/jwt-private-public-key-confusion
---

> JSON Web signature

Signature is used to verify that it is in fact from a legitimate source.

**Signing** - generation a `signature` that the recipient can validate to ensure that the token has not been tampered with.

**Validation (verification)** - process of checking signature.

For signing with [[Public-key cryptography]]:
- The `private key` is owned by the issuer and is used **to create** the signature.
- The `public key` can be shared with all parties that need **to verify** the signature.