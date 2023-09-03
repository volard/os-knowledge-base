---
tags: 
aliases: 
sources: https://en.wikipedia.org/wiki/Stateless_protocol
---
> Protocol in which receiver must not retain session state from previous requests

The sender transfers relevant session state to the receiver in such a way that every request can be understood in isolation *(without reference to session state from previous requests)*

# Examples

- Stateful:  [[TCP]], [[FTP]]
- Stateless: [[IP]], [[HTTP]]