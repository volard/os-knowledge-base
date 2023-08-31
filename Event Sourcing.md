![[event-sourcing.png]]

Event sourcing is a pattern used in software design that involves modeling the state of an application as a sequence of events. Instead of storing the current state of the application, the system stores a sequence of events.

**How event sourcing works:**

The event sourcing pattern works by storing a sequence of events that describe changes to the state of an application. Each event is stored as a separate record in an event store, which is a database that is optimized for storing large numbers of events.

When a user interacts with the system, the system generates an event that describes the user’s action. For example, if a user places an order, the system would generate an event that describes the order details. The event would be stored in the event store, and the system would update the state of the application based on the event.

When the state of the application needs to be queried, the system reads all of the events in the event store and applies them in sequence to reconstruct the current state of the application. This process is known as event replay.