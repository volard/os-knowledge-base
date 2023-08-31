---
aliases: cascading
tags: 
sources: https://www.baeldung.com/jpa-cascade-types
---
> Cascading - when some action on the target entity is being performed, the same action will be applied to the associated entity

- _ALL_ - propagates all operations — including Hibernate-specific ones — from a parent to a child entity.
- *PERSIST* - [[idu]]
- _MERGE_ - copies the state of the given object onto the persistent object with the same identifier. propagates to a child entity.
- *REMOVE* = *DELETE*- obvious
....
