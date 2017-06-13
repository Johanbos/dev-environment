Set-ExecutionPolicy Unrestricted
# run lines seperate!

# Install a Windows 10 Home of Prof

# Split drive to get a C with 100GB+ and D with 40GB+ (computer Management > Disk management)

# Add to domain (ask domain admin)

# Install all updates!!!

# packagemanager
Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
choco upgrade lessmsi -y

# Cloud files
choco upgrade googledrive

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
choco upgrade visualstudiocode -y
choco upgrade visualstudio2015community -y
choco upgrade linqpad5 -y
#choco upgrade docker-for-windows -y #didnt work, because it only would run windows-containers
#choco upgrade docker -y #didnt work, because it only would run windows-containers
choco upgrade nodejs
choco upgrade ruby

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

# update everything! :-)
choco upgrade all -y