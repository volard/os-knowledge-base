---
aliases: Command Query Responsibility Segregation
---
![[CQRS.webp]]

In a traditional system, there is a single model that handles both read and write operations. This model is responsible for maintaining the state of the system, processing commands, and returning data to the client. However, as the system grows in complexity and size, it becomes difficult to scale and maintain.

In order to overcome the above issue, [CQRS pattern](https://medium.com/javarevisited/what-is-cqrs-command-and-query-responsibility-segregation-pattern-7b1b38514edd) separates the read and write operations into two different models: the Command model and the Query model. The Command model is responsible for handling write operations and updating the state of the system. The Query model is responsible for handling read operations and returning data to the client.

**How CQRS pattern works:**

When a client sends a command to the system, it is handled by the Command model. The Command model processes the command and updates the state of the system. If the command is successful, it returns a success message to the client.

When a client sends a query to the system, it is handled by the Query model. The Query model retrieves the data from the system and returns it to the client. The Query model can be optimized for read operations, which can improve the performance of the system.