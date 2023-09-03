---
tags:
  - security
aliases:
  - Elliptic Curve Diffie–Hellman
  - Elliptic Curve Diffie–Hellman Key Exchange
sources: []
---
> Anonymous [[key establishment|key exchange]] scheme

Based on the following property of EC points:

$$ (a * G) * b = (b * G) * a $$
Where 
- `a, b` - secrets
- `G` - ECC elliptic curve with generator point

# Algorithm
The **ECDH** algorithm (Elliptic Curve Diffie–Hellman Key Exchange) is trivial:

1. **Alice** generates a **random** ECC key pair: {`alicePrivKey`, `alicePubKey` = `alicePrivKey` * `G`}
2. **Bob**  generates a **random** ECC key pair: {`bobPrivKey`, `bobPubKey` = `bobPrivKey` * `G`}
3. Alice and Bob **exchange their public keys** through the insecure channel
4. **Alice** calculates `sharedKey` = `bobPubKey` * `alicePrivKey`
5. **Bob** calculates `sharedKey` = `alicePubKey` * `bobPrivKey`
6. Now both **Alice** and **Bob** have the same 
`sharedKey` == `bobPubKey` * `alicePrivKey` == `alicePubKey` * `bobPrivKey`