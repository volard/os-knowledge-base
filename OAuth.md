---
aliases: OAuth 2.0, access token, bearer token
tags: security
sources: https://www.marcobehler.com/guides/spring-security-oauth2, https://oauth.net/2/, https://www.youtube.com/watch?v=t18YB3xDfXI
---

> The industry-standard protocol (for [[authorization]] 3rd party apps)

For [[authentication]] with OAuth 2.0 is used [[OpenID connect]]
# Problem
## TLDR 
How can the resource owner (you) give a client (3rd party software) scoped access (read or write or both) to a protected resource (bank account)?

## Details
- You have a banking account (for example).
- 3d party app can access your profile and generate custom fancy reports.
- You don’t really want to give that 3rd party application your username/password combination to your account
- You want to allow to _read_ your banking transactions, but certainly not allow it to _create_ new transactions.
- You also want to be easily able to _revoke_ that access, i.e. not let the 3rd party access your bank account anymore (but 3rd party has your credentials hmmm.... Problem, right?)

# Solution
Use `access tokens`.
Aka `bearer token`, because whoever **bears** (fancy word for: **holds**) a (valid) token, gets access to the protected resource

![[full_oauth_flow.excalidraw.png]]

---

3rd party takes that `secret` and `id` via registration itself in the bank as a specialized side service, so bank actually knows that this is 3rd party before resource owner perform any actions

There is a process of dynamic client registration
