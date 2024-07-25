---
tags:
  - review
aliases: 
sources:
  - https://www.howtogeek.com/362203/what-is-a-tar.gz-file-and-how-do-i-open-it/
---
> a tar file is a collection of files wrapped up in one single file for easy storage

Tar files are often compressed after being created, giving it the .tar.gz file extension. Technically these are TGZ files, but nearly everyone calls both .tar and .tar.gz files simple "tar files."

 "tar" was derived from "**ta**pe **a**rchive"
you can use [[tar]] to extract stuff
like
```bash
tar -xzf tarfile
```
- **-v:** Enables verbose mode, showing the progress of the command
- **-x**: Extract
- **-z:** Uses gzip, omit this if you just have a .tar
- **-f**: specifies file input, rather than STDIN

