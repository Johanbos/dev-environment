$ErrorActionPreference = "stop";
clear-host;
write-host "Powershell version: " $PSVersionTable.PSVersion
Set-ExecutionPolicy Unrestricted
Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression