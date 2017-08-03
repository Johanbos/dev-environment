$ErrorActionPreference = "stop";
clear-host;
write-host "Powershell version: " $PSVersionTable.PSVersion
Set-ExecutionPolicy Unrestricted
choco upgrade all -y