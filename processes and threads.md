---
alias: process, thread, threads, processes
---

**Process** - an OS abstraction to represent what is needed to run a single program
(formally - a single, sequential stream of execution (**thread**) in its own address space)

The current state as well as all the metadata about the process is held in a process control block (PCB)

---

Within a program, you can also have independent parts that run simultaneously. The features that run these independent parts are called **threads**. 

---

To multiplex a process and make [[Concurrency and parallelism|concurrency]] great again
1. Process scheduling
2. bunch of other architectural stuff I don't want to read about now 