
```mermaid
flowchart TD
    C{Is task repetitive?}
    C -->|Yes| D[Cron]
    C -->|No| E[at]
```

- [[cron]]
- [[at]]