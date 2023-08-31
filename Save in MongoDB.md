---
aliases: 
tags: 
sources: https://stackoverflow.com/questions/16209681/what-is-the-difference-between-save-and-insert-in-mongo-db
---

For `save`, If the document contains `_id`, it will upsert querying the collection on the `_id` field, If not, it will `insert`.

