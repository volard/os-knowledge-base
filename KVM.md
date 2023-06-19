---
tags: definition
aliases: virtualization environment
sources: 
---

> Kernel-based Virtual Machine

[[FOSS]] virtualization module in the Linux [[Kernel]] that allows the kernel to function as a [[hypervisor]].

KVM requires a processor with hardware virtualization extensions, such as [[Intel VT]] or AMD-V

---

KVM emulates very little hardware, instead deferring to a higher level client application such as [[QEMU]], crosvm, or Firecracker for the rest of device emulation.

KVM in combination with client app forms **virtualization environment**

## Emulated devices provided by KVM
- Hot swappable virtual CPU and memory
- VirtIO