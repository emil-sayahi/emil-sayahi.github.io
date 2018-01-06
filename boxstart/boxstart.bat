@echo off
color fc
echo Running setup script...
color 0a
start /wait powershell -NoProfile -ExecutionPolicy bypass -command ". '%~dp0bootstrapper.ps1';Get-Boxstarter %*"
start /wait powershell -Command "Install-BoxstarterPackage -PackageName http://boxstarter.org/package/nr/url?https://emsa.cf/boxstart/limebox.ps1 -DisableReboots"
color fc
echo Running Ninite...
Ninite.exe