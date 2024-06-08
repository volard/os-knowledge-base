---
tags:
  - review
aliases:
  - pg_hba.conf
  - postgresql-contrib
  - psql
sources:
---
Config location: `/etc/postgresql/16/main/postgresql.conf`

`pg_hba.conf` (PostgreSQL Host-Based Authentication configuration file) is a configuration file used by PostgreSQL to control client authentication. It defines which hosts are allowed to connect to which databases, which users can connect, and what authentication methods they must use.
Location: `/etc/postgresql-9.1/pg_hba.conf`

`postgresql-contrib-16` is a package that contains additional modules and extensions for PostgreSQL 16. These modules and extensions provide extra functionality that is

```bash
psql --version

# connect to database as posgres user
sudo -u postgres psql
# help
\?
# List available databases
\l
# List available tables
\dt
# Describe a table
\d table_name
```

PEER authentication is a method used by PostgreSQL to authenticate users based on their operating system (OS) user accounts. This method is only applicable for local connections, where the client and the PostgreSQL server are running on the same machine.