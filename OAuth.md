---
aliases: OAuth 2.0, access token, bearer token
tags: security
sources: https://www.marcobehler.com/guides/spring-security-oauth2, https://oauth.net/2/
---

> The industry-standard protocol for authorization
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

## Where get them?
From `authorization server` after resource owner authenticates there and agree to provide token to 3rd party.

## How will I get them?
![[oauth2_flow.png]]

### Phase 1 : Getting An Authorization Code
1. When you're want to grant protected resource to 3rd party, you want to add you're banking account
2. You're push `Add bank account` and get redirected to bank site (**authentication server** endpoint. It can be inside banking site or provided as trusted by bank web service) where you authenticates.
3. After login, you have to confirm intention to grant to 3rd party somehow limited access to your banking account 
4. Authorization server generates a  `authorization code` and redirects you back to 3rd party web site with that authorization code

### Phase 2 : Getting an Access Token using authorization code

1. 3rd party present the authorization code **and** client (3rd party itself) credentials to the bank

That credentials 3rd party takes via registration it by developers in the banking as a specialized side service, so bank actually knows that this is 3rd party.

There is a process of dynamic client registration
