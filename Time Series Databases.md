---
aliases: In-Memory Databases
---
For applications that require high-speed real-time data access. Stores data in RAM.

Designed for dealing with linear data over time, can handle high ingestion rates, have built-in features specifically for dealing with time-based data, a schema optimized for time-series arrays, and batch delete features

# Negatives
Do not support full SQL, their read speed suffers compared to writes, they have no transaction capability and are append-only (not optimized for updates).

# Examples
- `InfluxDB`
- `Kdb+`
- `Prometheus`
- `H2`
- `Apache Ignite`