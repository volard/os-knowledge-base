> Virtual Machine Extensions

Hardware virtualization combability CPU has additional instructions: 
`VMPTRLD`
`VMPTRST`
`VMCLEAR`
`VMREAD`
`VMWRITE`
`VMCALL`
`VMLAUNCH`
`VMRESUME`
`VMXOFF`
`VMXON`
`INVEPT`
`INVVPID`
`VMFUNC`

These instructions permit entering and exiting a virtual execution mode where the guest OS perceives itself as running with full privilege ([[Protection ring|ring 0]]), but the host OS remains protected.