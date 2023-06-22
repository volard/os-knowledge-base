---
aliases: at, atq, atrm
---
used to schedule commands to be executed once, at a particular time

```bash
$ echo "cc -o foo foo.c" | at 1145 jan 31
```

**`atq`** program lists queued jobs, 
**`atrm`** removes jobs

```bash
$ atq
1234 2011-08-12 11:45 cc -o foo foo.c user
$ atrm 1234 
$ atq
$
```