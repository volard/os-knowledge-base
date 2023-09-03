---
tags:
  - security
aliases:
  - elliptic-curve cryptography
sources: []
---
> Elliptic-curve cryptography (ECC) public-key [[cryptosystem]] 

Based on the math of the on the algebraic structure of the **elliptic curves** over finite fields and the difficulty of the [**elliptic curve discrete logarithm problem (ECDLP)**](https://en.wikipedia.org/wiki/Elliptic-curve_cryptography#Rationale). 

Usually comes together with the [[ECDSA]]

**3072-bit [[RSA]] key** has similar cryptographic strength to a **256-bit ECC key**. 
Key generation is in ECC is significantly faster and cooler than with RSA.

Can use different underlying **elliptic curves**. 
Different curves provide different level of **security**, **performance**, **key length**, and may involve different algorithms.

# Components
- ECDSA, EdDSA -  digital signature algorithm
- ECIES, EEECC - Integrated (hybrid) Encryption scheme
- ECDH, X25519, FHMQV - secure [[key establishment|key exchange]] algorithm