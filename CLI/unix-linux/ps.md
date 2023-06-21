report a snapshot of the current processes.

More information: https://manned.org/ps.

If you want a repetitive update of the selection and the displayed information, use **top** instead.

# Usage
```bash
 - List all running processes:
   ps aux

 - List all running processes including the full command string:
   ps auxww

 - Search for a process that matches a string:
   ps aux | grep {{string}}

 - List all processes of the current user in extra full format:
   ps --user $(id -u) -F

 - List all processes of the current user as a tree:
   ps --user $(id -u) f

 - Get the parent PID of a process:
   ps -o ppid= -p {{pid}}

 - Sort processes by memory consumption:
   ps --sort size
```

[[procs]] is better than this and top