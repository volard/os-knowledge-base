> Internet Printing Protocol

A communication protocol for communication between client devices and printers [[print server|print servers]]

Unlike other printing protocols, it also supports access control, authentication, and encryption, making it more capable and secure

# Architecture 
Implemented using the [[HTTP]] and inherits all its streaming and security features.

Uses the traditional client–server model, with clients sending IPP requests to an IPP printer with the MIME media type `application/ipp` 

Uses TCP on 631 [[networking port]]