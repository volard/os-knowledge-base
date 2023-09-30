---
tags: definition
aliases: copy on write
sources: 
- https://www.geeksforgeeks.org/copy-on-write,
- https://www.youtube.com/watch?v=ViUwLytKzTY&list=PL2Yggtk_pK6-R9ehjj0AoTnWrNOLChuld&index=51
---

> Copy on Write

Resource optimization for [[fork system call|fork]] and `exec()` system calls.

Literally means copy something only when write request is performed.

# Appliances
## Filesystems
Prevents filesystem getting into an inconsistent state. Without this FS can be in the middle of saving a file when something goes wrong (power outage, bits flipped due to hardware error, cosmic rays 😆), and that file may now be corrupted.

Instead, with a COW filesystem, the **data changes in memory are written to a new area of the disk**. Once that is complete, anything that refers to the file is changed to point to the new file location on the disk.

# How it works

One of its main use is in the implementation of the [[fork system call]] in which it shares the [[virtual memory]] (pages) of the OS.

In the source code it's often states as
```cpp
// ...
if(fork() == 0){
	exec();
}
// ...
```

...