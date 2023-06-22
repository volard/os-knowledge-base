---
sources: https://learn.microsoft.com/en-us/sysinternals/downloads/coreinfo
---

A command-line utility that shows you the mapping between logical processors and the physical processor.

It uses the Windows’ [GetLogicalProcessorInformation](https://msdn.microsoft.com/library/ms683194.aspx) function to obtain this information and prints it to the screen, representing a mapping to a logical processor with an asterisk e.g. ‘*’.

Requires administrative rights on Intel systems

# Install
## Manual
Extract the [archive](https://download.sysinternals.com/files/Coreinfo.zip) to a directory and then run Coreinfo by typing from that directory `Coreinfo` in the console on a 32 bit Windows version or `Coreinfo64` for a 64 bit version.

# Scoop
```PowerShell
scoop bucket add sysinternals
scoop install sysinternals/coreinfo
```

# Usage
```PowerShell
coreinfo [-c][-f][-g][-l][-n][-s][-m][-v]
```

|Parameter|Description|
|---|---|
|**-c**|Dump information on cores.|
|**-f**|Dump core feature information.|
|**-g**|Dump information on groups.|
|**-l**|Dump information on caches.|
|**-n**|Dump information on NUMA nodes.|
|**-s**|Dump information on sockets.|
|**-m**|Dump NUMA access cost.|
|**-v**|Dump only virtualization-related features including support for second level address translation.|

All options except `-v` are selected by default.