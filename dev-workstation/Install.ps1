$ErrorActionPreference = "stop";
clear-host;
write-host "Powershell version: " $PSVersionTable.PSVersion

If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{   
	$arguments = "& '" + $myinvocation.mycommand.definition + "'"
	Start-Process powershell -Verb runAs -ArgumentList $arguments
	Break
}

# allow our own powershell scripts
Set-ExecutionPolicy Unrestricted

# Install outlook manually or from office.com
# S:\Applic\Office\Office2007-Std-NL\Desktop.bat

choco upgrade lessmsi -y

# passwords
choco upgrade keepass -y

# source control
choco upgrade git -y
choco upgrade sourcetree -y

# Browsers
choco upgrade googlechrome -y
choco upgrade firefox -y

#architecture
choco upgrade archi -y

#coding
choco upgrade dotnetcore-sdk -y
choco upgrade dotnetcore-runtime -y
choco upgrade dotnetcore-windowshosting -y
choco upgrade visualstudio2017community -y
choco upgrade visualstudiocode -y
choco upgrade linqpad5 -y
#choco upgrade docker-for-windows -y #didnt work, because it only would run windows-containers
#choco upgrade docker -y #didnt work, because it only would run windows-containers
choco upgrade nodejs -y
#choco upgrade ruby #newest ruby needs to be supported by team

# dba
choco upgrade sql-server-management-studio -y

# tools
choco upgrade greenshot -y
choco upgrade slack -y
choco upgrade treesizefree -y
choco upgrade procexp -y
choco upgrade 7zip -y
choco upgrade paint.net -y
choco upgrade notepadplusplus -y
choco upgrade winmerge -y
choco upgrade vncviewer -y
choco upgrade postman -y
choco upgrade azure-cli -y