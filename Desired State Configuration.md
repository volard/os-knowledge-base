---
tags: definition
aliases: DSC, Desired State Configuration
sources: https://learn.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.3, https://learn.microsoft.com/en-us/powershell/dsc/overview/DscForEngineers?view=dsc-1.1&viewFallbackFrom=powershell-7.3
---
> Management framework in [[PowerShell]] that enables you to manage enterprise infrastructure with configuration as code

Is applied in [[Continuous deployment]]

# Example

For scripting and automation purposes [[PowerShell]] may used, but it's written in imperative way exposing details about `how` actions is being performed instead of actually `desired state` declaration only.

## Example

Assume administrator configurate [[SMB]] sharing

### PowerShell
In PowerShell its dirty, hard to read and manage code

```PowerShell
# But actually creating a share in an idempotent way would be

$shareExists = $false
$smbShare = Get-SmbShare -Name $Name -ErrorAction SilentlyContinue
if($smbShare -ne $null)
{
    Write-Verbose -Message "Share with name $Name exists"
    $shareExists = $true
}

if ($shareExists -eq $false)
{
    Write-Verbose "Creating share $Name to ensure it is Present"
    New-SmbShare @PSBoundParameters
}
else
{
    # Need to call either Set-SmbShare or *ShareAccess cmdlets
    if ($PSBoundParameters.ContainsKey("ChangeAccess"))
    {
       #...etc, etc, etc
    }
}
```

### DSC
DSC allows to write `only` what you want done, and the underlying logic is abstracted away

```PowerShell
# A configuration is a special kind of PowerShell function
Configuration Sample_Share
{
   Import-DscResource -Module xSmbShare
   # Nodes are the endpoint we wish to configure
   # A Configuration block can have zero or more Node blocks
   Node $NodeName
   {
      # Next, specify one or more resource blocks
      # Resources are simply PowerShell modules that
      # implement the logic of "how" to execute a task
      xSmbShare MySMBShare
      {
          Ensure      = "Present"
          Name        = "MyShare"
          Path        = "C:\Demo\Temp"
          ReadAccess  = "Bob"
          FullAccess  = "Alice"
          Description = "This is an updated description for this share"
      }
   }
}
#Run the function to compile the configuration
Sample_Share
#Pass the configuration to the nodes we defined and configure them
Start-DscConfiguration Sample_Share
```



# Separating Environment from Structure

A common pattern in DevOps is to have multiple environments for deployment. Like `dev`, `test`, `prod`.

DSC configurations accommodate this dev-test-prod pipeline through the use of [configuration data](https://learn.microsoft.com/en-us/powershell/dsc/configurations/configdata?view=dsc-1.1). 

This further abstracts the difference between the structure of the configuration from the nodes that are managed

To deploy to the different environments,  invoke `Start-DscConfiguration` with the configuration data for the appropriate environment.