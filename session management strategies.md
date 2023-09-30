---
tags:
  - review
  - mess
aliases:
  - session, session management, session management types
sources:
  - https://medium.com/@kennch/stateful-and-stateless-authentication-10aa3e3d4986
---

# Types
- [[Stateless session]]
# Notes on [[JWT]]
JWT solves the problem (for services) to have the need to access a centralized entity providing authorization information for any given client


You thought personally to change secret on the server to invalidate tokens
	BUT (yeah)
imagine a case where you're using a public key - you wouldn't want to go and recreate that key any time you want to invalidate a single token
	AND the most important
approach if useful in monolithic apps, but in order to implement it in a microservices app you need all services to either store the user's password and last login or to make requests to fetch them and both are bad ideas.

--- 
common approach for invalidating tokens when a user changes their password is to sign the token with a hash of their password. Thus if the password changes, any previous tokens automatically fail to verify. You can extend this to logout by including a last-logout-time in the user's record and using a combination of the last-logout-time and password hash to sign the token. This requires a DB lookup each time you need to verify the token signature, but presumably you're looking up the user anyway

BUT approach if useful in monolithic apps, but in order to implement it in a microservices app you need all services to either store the user's password and last login or to make requests to fetch them and both are bad ideas.