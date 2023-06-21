Intel's technology for virtualization on the x86 platform

# Check compatibility
- The CPU flag for VT-x capability is [[VMX]]
- In Linux, this can be checked via `/proc/cpuinfo`, 
- In macOS via 
```bash
sysctl machdep.cpu.features
```

