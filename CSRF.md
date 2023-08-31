---
aliases: Cross-Site Request Forgery, one-click attack, session riding
tags: security
sources: https://en.wikipedia.org/wiki/Cross-site_request_forgery
---

> Type of malicious [[exploit]] of a website

> Attempt to perform requests against sites where the user is logged in by tricking the user’s browser into sending a request from a different site. To accomplish this, a specially crafted site (or item) must contain the URL to the target. A common example is an  tag embedded in a malicious page with the src pointing to the attack’s target

pronounce as _sea-surf_
# Solution
Short-lived JWTs can help in this case. 

Common CSRF mitigation techniques include special headers that are added to requests only when they are performed from the right origin, per session cookies, and per request tokens. 
If JWTs (and session data) are not stored as cookies, CSRF attacks are not possible