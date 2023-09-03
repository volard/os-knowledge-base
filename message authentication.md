---
tags:
  - security
aliases:
  - MAC
  - HMAC
  - hash-based message authentication code
  - Message authentication codes
  - keyed hash functions
  - authentication tag
  - message integrity code
  - MIC
  - digital authenticity code
sources: []
---
> Message authentication code (aka authentication tag) - cryptographic code, calculated by given **key** and given **message** with some function. 

The MAC code is **digital authenticity code**, like a [[digital signature]], but with **pre-shared key**.

This function aka keyed [[hash function]], because its act the same:
- irreversible
- Hard to analyze
But it's insecure anyway until the function is not based on some strong hash function (here HMAC goes)

# A lots of fuckin' MACs
[**HMAC**](https://en.wikipedia.org/wiki/HMAC) (Hash-based MAC, e.g. HMAC-SHA256)
[**KMAC**](https://www.cryptosys.net/manapi/api_kmac.html) (Keccak-based MAC). 

## Based on **symmetric ciphers**
[**CMAC**](https://en.wikipedia.org/wiki/One-key_MAC) (Cipher-based MAC),
[**GMAC**](https://en.wikipedia.org/wiki/Galois/Counter_Mode) (Galois MAC) 
[**Poly1305**](https://en.wikipedia.org/wiki/Poly1305) (Bernstein's one-time authenticator). 

---
[**UMAC**](https://en.wikipedia.org/wiki/UMAC) (based on universal hashing)
[**VMAC**](https://en.wikipedia.org/wiki/VMAC) (high-performance block cipher-based MAC) 
[**SipHash**](https://en.wikipedia.org/wiki/SipHash) (simple, fast, secure MAC, but shit as for cryptographic purposes (see [[alternatives to RSA|weak hash functions]]))

# [[MAC|MAC address]] and this MAC terminology
- The term message integrity code (MIC) is frequently used to not mess up with [[MAC|MAC address]]
- Some authors use MIC to refer to a [[hash function|message digest]]
- RFC 4949 recommends avoiding the term _message integrity code_ (MIC), and instead using checksum, error detection code, hash, _keyed hash_, message authentication code, or protected checksum