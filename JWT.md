---
aliases: JSON Web Tokens, JWS, JWE, JSON Web Signature, JSON Web Encryption
tags: security, JOSE, JavaScript Object Signature and Encryption
sources: 
- https://hasura.io/blog/best-practices-of-using-jwt-with-graphql/#introduction-what-is-a-jwt, 
- https://www.baeldung.com/java-json-web-tokens-jjwt, https://stackoverflow.com/questions/39239051/rs256-vs-hs256-whats-the-difference#39239395, 
- https://codecurated.com/blog/introduction-to-jwt-jws-jwe-jwa-jwk/#json-web-algorithm-jwa,
- https://www.iana.org/assignments/jose/jose.xhtml
---
>  Open standard ([RFC 7519](https://tools.ietf.org/html/rfc7519)) that defines a compact and self-contained way for securely transmitting information between parties as a JSON object
>  Pronounced as jot


# Types
- JWT - plain without encryption or security (its generic name)
- [[JWS]]
- [[JWE]]
- [JWA](https://tools.ietf.org/html/rfc7518)
- [[JWK]]
- [Octet JWK](https://www.rfc-editor.org/rfc/rfc8037)
- [JWK Thumbprint](https://www.rfc-editor.org/rfc/rfc7638.html)
- [JWK Thumbprint URI](https://www.rfc-editor.org/rfc/rfc9278.html) 

![[JWT overview.excalidraw]]


# Structure
```yaml
[Base64(HEADER)].[Base64(PAYLOAD)].[Base64(SIGNATURE)]

eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.
eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWV9.
TJVA95OrM7E2cBab30RMHrHDcEfxjoYZgeFONFh7HgQ
```
## Header
[JOSE - JavaScript Object Signature and Encryption](https://www.iana.org/assignments/jose/jose.xhtml)
```json
{
  "alg": "HS256", // Algorithm (HMAC SHA256 or RSA)
  "typ": "JWT" // Token type
  "kid":  // Information of the id of the JWK
}
```

## Payload
Contains the **claims** - statements about an entity (typically, the user) and additional data. 
Types of claims: 
- registered
- public
- private
---
- `iss` (Issuer): indicates who is the issuer of the JWT.
- `sub` (Subject):  indicates the user's id requesting the JWT.
- `aud` (Audience): shows who's the intended consumer of the JWT.
- `exp` (Expiration): the expiration time of the JWT.

All keys in the [rfc7519 section 4.1](https://datatracker.ietf.org/doc/html/rfc7519?ref=codecurated.com#section-4.1)
## Signature
Combination of encoded header, payload and key using header algorithm

```js
signature algorithm( base64(header) + "." + base64(payload), KEY )
```

It is `base64` encoded and/or signed.
So anyone can decode the token and use its data if no encryption is made. 

# See also
[[JWT usage best practices]]