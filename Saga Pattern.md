![[saga-pattern.webp]]

Saga design pattern is a technique used in distributed systems to maintain consistency across multiple transactions involving multiple services. It is used to manage distributed transactions across multiple services in a way that ensures data consistency.

In a distributed system, it’s common for a single transaction to involve multiple services. For example, in an e-commerce system, a single order may require updates to the inventory service, payment service, and shipping service. If any of these services fail, it can lead to inconsistencies in the data. The Saga pattern helps to ensure that the transaction is completed successfully or rolled back if any errors occur.

The Saga pattern works by breaking a single transaction into multiple smaller transactions, also known as “compensating transactions.” These compensating transactions are executed in a particular order and are designed to undo the effects of the previous transaction if any errors occur. The order of the compensating transactions is crucial to ensure that the system remains consistent.