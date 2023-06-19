---
tags: definition
aliases: virtual machine monitor, VMM, virtualizer
sources: https://stackoverflow.com/questions/6044978/full-emulation-vs-full-virtualization
---

soft, firmware or hardware that runs [[virtual machine]](s)

`Hyper-` means stronger meaning than `super-` in [[supervisor]] (a traditional term for the [[Kernel]]). Consequently, the hypervisor is the supervisor of the supervisors,  i.e. it's the kernel that controls kernels. 😄

Unlike an [[emulator]], the guest executes most instructions on the native hardware without need of any kind of interpreter

# Types

## Type 1
OS designed to run VMs. It is installed directly on the disk to be executed from the boot sector like any OS

## Type 2
