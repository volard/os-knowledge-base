---
aliases:
  - hash function
  - hash value
  - hash code
  - digest
  - hash
  - hash table
  - hashing
  - scatter storage addressing
  - hash algorithm
  - cryptographic hash function
  - message digest
tags:
  - security
sources:
  - https://en.wikipedia.org/wiki/Hash_function
  - https://en.wikipedia.org/wiki/Cryptographic_hash_function
  - https://cryptobook.nakov.com/cryptographic-hash-functions/crypto-hashes-and-collisions
---
> Any function that can be used to map data of arbitrary size to fixed-size values, which cannot be reversed back to the original message and almost uniquely identifies the input

The values returned by a hash function are called `hash values`, `hash codes`, `digests`, or `hashes`.
 
The values are usually used to index a fixed-size table called a `hash table (associative array)`. 
Use of a hash function to index a hash table is called `hashing` or `scatter storage addressing`.

# Properties
- **Deterministic**: same input -> same hash
- **Quick**
- **Hard to analyze**: a small change to the input -> totally change the output (see [[Confusion and Diffusion]])
- **Irreversible**: generating a valid input message from its hash value should be **infeasible**. This means that there should be no significantly better way than brute force
- **No collisions**

# See also
- [List of hash functions](https://en.wikipedia.org/wiki/List_of_hash_functions) 