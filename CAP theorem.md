Distributed system can has three properties:
1. consistency
2. availability
3. [[Partition tolerance]]

It states that any distributed data store can provide only two of the following three guarantees: When a network partition failure happens, it must be decided whether to do one of the following: • cancel the operation and thus decrease the availability but ensure consistency
• proceed with the operation and thus provide availability but risk inconsistency

This is called as **CAP trade-off** sometimes