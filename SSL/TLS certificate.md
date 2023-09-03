---
tags:
  - security
aliases:
  - certificate
  - SSL certificate
  - TLS/SSL certificate
  - certificate authority
  - CSR
  - Certificate Signing Request
sources:
  - https://www.cloudflare.com/learning/ssl/what-is-an-ssl-certificate/, https://dzone.com/articles/tlsssl-certificates-part-4
---
> [[Public key certificate|digital certificate]] contain the website's [[Public-key cryptography|public key]] and the website's identity, along with related information

# Types
- Single-domain - for one hostname
- Wildcard - for domain and subdomains
- Multi-domain - for several domains

# Validation levels
- *domain* - validate that the person who applies for a certificate is the owner of the domain name
- *organization* - validates the domain’s ownership but also the owner’s identity. This means that an owner might be asked to provide personal identification documents which prove their identity.
- extended validation - validation of domain ownership, owner identity, as well as a business’s legal registration proof.
# Content inside
- The domain name that the certificate was issued for
- Which person, organization, or device it was issued to
- Which certificate authority issued it
- The certificate authority's digital signature
- Associated subdomains
- Issue date of the certificate
- Expiration date of the certificate
- The public key

# How to get this shit
From a certificate authority (CA) -  outside organization, a trusted third party, that generates and gives out SSL certificates.

1. Domain owner create private key to decrypt future sertificate
2. He creates CSR (certificate signing request) along with pair of keys
3. Send CSR to CA
4. Get certificate in response
## CA examples
Comodo, GlobalSign, DigiCert, GeoTrust, Thawte, and Symantec.


# See also
Want to say "fuck off" to Certificate authorities? - Use [[web of trust]]