> cron table file

configuration file that specifies commands to run periodically on a given schedule AND ALSO a command to edit this file

Users can have their own crontab files (`/etc/cron.d` ) 
and often there is a system-wide crontab file ( `/etc/crontab`) that only administrators can edit

# File structure 

```
# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of the month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday;
# │ │ │ │ │                                   7 is also Sunday on some systems)
# │ │ │ │ │
# │ │ │ │ │
# * * * * * <command to execute>
```

**Cron expression** - time stamp in crontab format

Symbol | Meaning
------------ | ------------
\* | all
, | separations items of list
\- | defines ranges
% | newline char
L | last
W | day of month
\# | day of week


**Routine** - command that needs to be executed



