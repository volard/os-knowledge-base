---
aliases: 
tags: 
sources: https://tools.ietf.org/html/rfc7517, https://codecurated.com/blog/introduction-to-jwt-jws-jwe-jwa-jwk/#json-web-algorithm-jwa
---
> Data structure that contains information about hashing function's cryptographic key.

```json
{
    "kty":"EC",
    "crv":"P-256",
    "x":"f83OJ3D2xF1Bg8vub9tLe1gHMzV76e8Tus9uPHvRVEU",
    "y":"x_FEzRu9m36HLN_tue659LNpXW6pCyStikYjKIWI5a0",
    "kid":"Public key used in JWS spec Appendix A.3 example"
}
```

Used to host a public key for a hashing function with an [[Public-key cryptography|asymmetric key]]

