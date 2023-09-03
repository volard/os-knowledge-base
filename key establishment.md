---
tags:
  - security
aliases:
  - key exchange
  - key negotiation
  - key transport
  - Key Agreement
  - AKE
  - Authenticated Key Exchange
  - password-authenticated key agreement
  - PAKE
  - Authenticated Key Agreement
sources:
  - https://cryptobook.nakov.com/key-exchange
---
> Process or protocol, whereby a **shared secret** becomes available to two parties

# Examples
[**RSA-OAEP**](https://en.wikipedia.org/wiki/Optimal_asymmetric_encryption_padding) and [**RSA-KEM**](https://tools.ietf.org/html/rfc5990) (RSA key transport)
[**PSK** (pre-shared key)](https://en.wikipedia.org/wiki/Pre-shared_key)
[**SRP** (Secure Remote Password protocol)](https://en.wikipedia.org/wiki/Secure_Remote_Password_protocol)
[**FHMQV**](https://www.cryptopp.com/wiki/Fully_Hashed_Menezes-Qu-Vanstone) (Fully Hashed Menezes-Qu-Vanstone)
[**ECMQV**](https://www.cryptopp.com/wiki/Elliptic_Curve_Menezes-Qu-Vanstone) (Elliptic-Curve Menezes-Qu-Vanstone) 
[**CECPQ1**](https://en.wikipedia.org/wiki/CECPQ1) (quantum-safe key agreement)
# Techniques to achieve key sharing
## Key agreement
Both parties contribute to the negotiation of the shared secret
## Key transport
Only one of the parties contributes to the shared secret and the other party obtains the secret from it
Implemented through [[Public-key cryptography]]

## Authenticated Key Exchange (AKE)
Exchange of session key in a key exchange protocol which also **authenticates the identities** of the involved parties (e.g. through a password, public key or digital certificate).

### Examples
- For example, if you connect to a password-protected Wi-Fi network, an authenticated key agreement protocol is used, in most cases **password-authenticated key agreement** (PAKE)

- If you connect to a public Wi-Fi network, **anonymous key agreement** is conducted.

- [[SSL|TLS]] one of the most widely used AKE protocol