---
tags: definition
aliases: Group Policy Object, GPO, Local Group Policy, LGPO, LocalGPO, Policy Editor, Group Policy Editor
sources: 
---

> Windows feature that controls the working environment of user accounts and computer accounts

**Group Policy Object** (**GPO**) - set of Group Policy configurations

**Local Group Policy (LGPO or LocalGPO)** - version of Group Policy allows Group Policy Object management without [[Active Directory]] on standalone computers.

Active Directory servers disseminate group policies by listing them in their [[LDAP]] directory under objects of class `groupPolicyContainer`

The Policy Editor `gpedit.msc`

1. **Local** -  settings in the computer's local policy
2. **Site** -  Group Policies associated with the _[Active Directory](https://en.wikipedia.org/wiki/Active_Directory "Active Directory") site_ in which the computer resides
3. **Domain** -  Group Policies associated with the [Windows domain](https://en.wikipedia.org/wiki/Windows_domain "Windows domain") in which the computer resides
4. **Organizational Unit** - Group policies assigned to the _Active Directory organizational unit (OU)_ in which the computer or user are placed