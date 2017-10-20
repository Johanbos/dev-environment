$ErrorActionPreference = "stop";
clear-host;
write-host "Powershell version: " $PSVersionTable.PSVersion
Set-ExecutionPolicy Unrestricted

# Install outlook manually
# S:\Applic\Office\Office2007-Std-NL\Desktop.bat

choco upgrade lessmsi -y

# Cloud files
choco upgrade googledrive -y

# passwords
choco upgrade keepass -y
choco upgrade keepass-keepasshttp -y

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
choco upgrade visualstudio2017community -y
choco upgrade visualstudiocode -y
choco upgrade linqpad5 -y
#choco upgrade docker-for-windows -y #didnt work, because it only would run windows-containers
#choco upgrade docker -y #didnt work, because it only would run windows-containers
choco upgrade nodejs -y
#choco upgrade ruby #newest ruby needs to be supprtoed by team

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