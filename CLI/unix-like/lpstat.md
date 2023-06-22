Show status information about printers.

More information: https://manned.org/lpstat.

```bash
 - List printers present on the machine and whether they are enabled for printing:
   lpstat -p

 - Show the default printer:
   lpstat -d

 - Display all available status information:
   lpstat -t

 - Show a list of print jobs queued by the specified user:
   lpstat -u {{user}}

 - Display only those printers that are currently accepting print requests:
   lpstat -a

 - Display all active print jobs
   lpstat -o
```