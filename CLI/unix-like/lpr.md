CUPS tool for submit print jobs

See also: [[lpstat]] and [[lpadmin]]. More information: https://www.cups.org/doc/man-lpr.html.

```bash
 - Print a file to the default printer:
   lpr {{path/to/file}}

 - Print 2 copies:
   lpr -# {{2}} {{path/to/file}}

 - Print to a named printer:
   lpr -P {{printer}} {{path/to/file}}

 - Print either a single page (e.g. 2) or a range of pages (e.g. 2–16):
   lpr -o page-ranges={{2|2-16}} {{path/to/file}}

 - Print double-sided either in portrait (long) or in landscape (short):
   lpr -o sides={{two-sided-long-edge|two-sided-short-edge}} {{path/to/file}}

 - Set page size (more options may be available depending on setup):
   lpr -o media={{a4|letter|legal}} {{path/to/file}}

 - Print multiple pages per sheet:
   lpr -o number-up={{2|4|6|9|16}} {{path/to/file}}
```

# See also
`lprm` cancels print jobs that were queued for printing.
Example: Removes job ID **385** from destination **mydestination**.
```bash
lprm -P mydestination 385
```

