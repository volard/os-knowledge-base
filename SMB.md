---
tags: definition
aliases: SMB, Server Message Block
sources: https://learn.microsoft.com/ru-ru/powershell/module/smbshare/?view=winserver2012-ps, https://learn.microsoft.com/ru-ru/powershell/module/smbshare/New-SmbShare?view=winserver2012-ps
---

> Server Message Block

A communication protocol to provide shared access to files and printers across a network

Often used in Windows and can be enabled via

```Powershell
Enable-WindowsOptionalFeature -Online -FeatureName smb1protocol
```

[Reference for all Server Message Block (SMB) Share-specific cmdlets](https://learn.microsoft.com/ru-ru/powershell/module/smbshare/?view=winserver2012-ps)

# Create SMB share
```PowerShell
New-SmbShare or nsmbs
   [-Name] <String>
   [-Path] <String>
   [[-ScopeName] <String>]
   [-AsJob]
   [-CachingMode <CachingMode>]
   [-CATimeout <UInt32>]
   [-ChangeAccess <String[]>]
   [-CimSession <CimSession[]>]
   [-ConcurrentUserLimit <UInt32>]
   [-ContinuouslyAvailable <Boolean>]
   [-Description <String>]
   [-EncryptData <Boolean>]
   [-FolderEnumerationMode <FolderEnumerationMode>]
   [-FullAccess <String[]>]
   [-NoAccess <String[]>]
   [-ReadAccess <String[]>]
   [-Temporary]
   [-ThrottleLimit <Int32>]
   [-Confirm]
   [-WhatIf]
```

```PowerShell
New-SmbShare -Name MyShare -Path C:\Demo\Temp -FullAccess Alice -ReadAccess Bob
```

To delete a share that was created by this cmdlet, use the `Remove-SMBShare` cmdlet.