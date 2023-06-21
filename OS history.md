# Phase 1 - Hardware expensive, humans cheap
+ more efficient use of hardware. lack of interaction between user and computer
+ batch mode was popular - load, run, print, repeat
+ no protection, what if batch program has bug?
+ dump core - the term came from core memory which stored data as magnetization in iron rings

# Phase 1.5 (late 60s)
+ started optimizing for I/O.
+ i/o and computing was made asynchronously
+ multiprogramming - several programs run simultaneously - this is complex, which job to run when, how to protect them from each other?
+ MULTICS was the child of this, also OS 360
+ this is concurrent - not parallel - single processor; multiplexed

# Phase 2 (70-85)
+ hardware cheaper, humans expensive
+ OS maturing
+ interactive timesharing - you have terminals (like VT-100) to let multiple users use a computer
+ users can do debugging, editing, email
+ CPU time traded for response time
+ thrashing - performance very non-linear vs load. thrashing caused by many factors including swapping, queuing
+ ARPANet also happened at this time.

# Phase 3 (81-)
+ hardware very cheap, humans very expensive
+ personal computers came up. the early OSes on PC was simple (MSDOS, CP/M)
+ the PCs become powerful their OSes got the features of the big machine OSes (parallelism etc)
+ GUIs came around.
+ The early windows OSes had no protection, there was just one level (not dual mode)
+ MS Windows went from being single level, to HAL, to full protection. HAL was hardware abstraction level.
  it made the OS portable by having device dependent software so the OS running on top of HAL thinks it has the same hardware
  but it had some caused inefficiencies

# Phase 4 (88-) Distributed systems
+ concept of clients separate from servers became common
+ the blast of the internet
+ the Interface Message Processors - were 256 addresses. so they shifted to IPv4?
+ Internet got shared access to computing resources, data/files

# Phase 5 (95-) Mobile System
+ laptops, mobiles, powerful PCs
+ peer - to - peer
+ the computer is a datacenter. the network is the OS.
