$ErrorActionPreference = "stop";
clear-host;
write-host "Powershell version: " $PSVersionTable.PSVersion

If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{   
	$arguments = "& '" + $myinvocation.mycommand.definition + "'"
	Start-Process powershell -Verb runAs -ArgumentList $arguments
	Break
}


$ram = 2GB
$hd = 80GB
$path = "D:\Project\vm"
#https://releases.rancher.com/os/latest/rancheros.iso
$name = "rancheros01" 
$iso = "rancheros.iso"

#http://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-8.7.1-amd64-netinst.iso
#$name = "debian" 
#$iso = "debian-8.7.1-amd64-netinst.iso"

#http://distro.ibiblio.org/tinycorelinux/8.x/x86/release/TinyCore-current.iso
#$name = "tinycore"
#$iso = "TinyCore-current.iso"

New-VM -Name $name -Path $path -MemoryStartupBytes $ram -NewVHDPath $path\$name.vhdx -NewVHDSizeBytes $hd 
Set-VMDvdDrive -VMName $name -Path $path\$iso
Start-VM $name
vmconnect.exe localhost $name | Out-Null
Stop-VM $name
Remove-VM $name -Confirm

# Install a Windows 10 Home of Prof

# Split drive to get a C with 100GB+ and D with 40GB+ (computer Management > Disk management)

# Add to domain (ask domain admin)

