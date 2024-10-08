Print files.

More information: https://manned.org/lp.

To see available or default printer use [[lpstat]] command

```bash
 - Print the output of a command to the default printer:
   echo "test" | lp

 - Print a file to the default printer:
   lp {{path/to/filename}}

 - Print a file to a named printer:
   lp -d {{printer_name}} {{path/to/filename}}

 - Print N copies of file to default printer (replace N with desired number of copies):
   lp -n {{N}} {{path/to/filename}}

 - Print only certain pages to the default printer (print pages 1, 3-5, and 16):
   lp -P 1,3-5,16 {{path/to/filename}}

 - Resume printing a job:
   lp -i {{job_id}} -H resume
```
