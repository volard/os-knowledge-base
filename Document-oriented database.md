---
aliases: Document stores
---
Typically document formats are `JSON`, `BSON`, `XML` with no data structure enforcement (documents can be different)

# Negatives
- Not ACID compliant, 
- limited to querying within a document, 
- relationships/cross references are not enforced, 
- slow searching, cannot join documents/collections in a single query, 
- lack of database enforcement requires developer discipline and vigilance for application level enforcement, and they typically result in data duplication.

# Examples
- `MongoDB`
- `DynamoDB`
- `Couchbase`
- `Firebase`