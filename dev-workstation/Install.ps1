$ErrorActionPreference = "stop";
clear-host;
write-host "Powershell version: " $PSVersionTable.PSVersion

If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {   
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    exit
}

# allow our own powershell scripts
Set-ExecutionPolicy Unrestricted

iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco upgrade lessmsi -y

# source control
choco upgrade git -y

# Browsers
choco upgrade googlechrome -y
choco upgrade firefox -y

#coding
choco upgrade dotnetcore-sdk -y
choco upgrade dotnetcore-runtime -y
choco upgrade dotnetcore-windowshosting -y
choco upgrade visualstudio2022community -y
choco upgrade vscode -y
choco upgrade linqpad5 -y
choco upgrade docker-desktop -y
choco upgrade docker-cli -y
choco upgrade nvm -y

# dba
choco upgrade azure-data-studio -y

# tools
choco upgrade treesizefree -y
choco upgrade 7zip -y
choco upgrade paint.net -y
choco upgrade postman -y
choco upgrade azure-cli -y
choco upgrade 1password -y
