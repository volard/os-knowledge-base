---
aliases: 
tags: 
sources: https://stackoverflow.com/questions/12204035/what-is-persistence-exception-translation-for-repository-beans
---

> The process of converting low level persistence exceptions into high level Spring exceptions (runtime `DataAccessException` probably...)

This allows you to handle most persistence exceptions, which are non-recoverable, only in the appropriate layers, without annoying boilerplate catches/throws, and exception declarations.
