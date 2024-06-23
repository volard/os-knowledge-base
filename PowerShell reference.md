In PowerShell everything is object so we can even write C# like scripts.

Regular expressions is supported everywhere.

Ctrl + Space - autocompletion out of the box.

### Get BIOS info
```powershell

Get-CimInstance -classname Win32_BIOS

```

### Get motherboard info
```powershell

wmic baseboard get product, manufacturer, version

```

### Create/delete new file
```powershell

New-Item/Remove-Item blablabla

```

### cURL
```powershell

curl = Invoke-WebRequest = iwr <URI> -outfile <name>

```

### Get all aliases
```powershell

Get-Alias

```

### Get all method and manipulation options on object
```powershell

Get-member

```

### Man or help on command
```powershell

Get-Help command

```

### Gui like interface to interact with in case of command results
```powershell

Out-Gridview

```

### Get / set execution policy
```powershell

Get(set)-executionpolicy

```

### List of system variables
```powershell

ChildItem Env:

```

### Create/delete environmental variable on persistent basis
```powershell

# uses [System.Environment] class with the SetEnvironmentVariable method

  

# To create

[System.Environment]::SetEnvironmentVariable('ResourceGroup','AZ_Resource_Group')

# To Delete

[System.Environment]::SetEnvironmentVariable('ResourceGroup', $null)

```

### Add stuff to path env var
```powershell

$Env:Path += ';C:\Tools'

```

### User prompt
```powershell

$Server = Read-Host -Prompt 'Input your server  name'

Write-Host "You input server is '$Servers'" # or use alias echo

```

### Logic
```powershell

-or -and -xor # and so on

```

### Get user’s folders paths
```powershell

[enum]::GetNames( [System.Environment+SpecialFolder] ) |

Select @{ n="Name"; e={$*}}, @{ n="Path"; e={ [environment]::getfolderpath( $* ) }}

```

### Basic system information
```powershell

systeminfo

```