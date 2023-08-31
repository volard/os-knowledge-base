---
aliases: Inversion of Control
---

> Design principle but often mentioned as a pattern

To quote Fowler:

> The framework calls the developer, rather than the developer calls the framework.

Hence that IoC is often called the Hollywood Principle:

> Don’t call us, we’ll call you.

It's achievable through common methods:
- [[DI|Dependency Injection]]
- [[Observer Pattern]]
- [[Template Method Pattern]]
- [[Factory Pattern]]
-  [strategy design pattern](https://en.wikipedia.org/wiki/Strategy_design_pattern)
- contextualized lookup
- [service locator pattern](https://en.wikipedia.org/wiki/Service_locator_pattern) (SL)

Do not confuse it with “[**Dependency Inversion Principle**](https://en.wikipedia.org/wiki/Dependency_inversion_principle)”. DIP is a completely different principle which also does the job of providing loose coupling between classes and inverting the flow of dependencies