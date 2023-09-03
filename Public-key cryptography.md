---
aliases: Key authentication, Key/Config-authentication, Public-key cryptography, asymmetric key algorithm, asymmetric key, public key, private key
tags: security
sources: 
---

> Two different keys are used for encryption and decryption

- a _public key_ is published and enables any sender to perform encryption
- a _private key_ is kept secret by the receiver and enables only him to perform correct decryption
# Examples
- [[RSA]]
- [[ECC]]
- [**RSA-OAEP**](https://en.wikipedia.org/wiki/Optimal_asymmetric_encryption_padding) ( RSA and OAEP padding)
- [**RSAES-PKCS1-v1_5**](https://tools.ietf.org/html/rfc3447#section-7.2) (RSA and PKCS#1 v1.5 padding)
- [**DLIES**](https://en.wikipedia.org/wiki/Integrated_Encryption_Scheme) (discrete logarithms and symmetric encryption)
- [**ECIES**](https://en.wikipedia.org/wiki/Integrated_Encryption_Scheme) (elliptic curve cryptography and symmetric encryption)
# See also
- [[Symmetric-key algorithm]]