@echo off
color fc
echo Running setup script...
color 0a
start /wait powershell -NoProfile -ExecutionPolicy bypass -command ". '%~dp0bootstrapper.ps1';Get-Boxstarter %*"
start /wait powershell -Command "Install-BoxstarterPackage -PackageName http://boxstarter.org/package/nr/url?https://gist.githubusercontent.com/emil-sayahi/46b27e7e71abe3ffc1998e858c2d1ad6/raw/fb3e55c369c483853eeaaf0d4d9374a58d0c3454/limebox.ps1 -DisableReboots"
color fc
echo Running Ninite...
Ninite.exe