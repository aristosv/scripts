# Type: PowerShell Script
# Date: 
# Author: 
# Purpose: powershell linux patching
############################################################
$StartTime = Get-Date

$linuser = "user"
$linpass = ConvertTo-SecureString -AsPlainText -Force -String "pass"
$lincred = New-Object System.Management.Automation.PSCredential($linuser, $linpass)

$screenip = '192.168.1.5'
$command=@'
apt update ; apt -y upgrade ; apt -y autoclean ; reboot
'@

$sessionid = New-SSHSession -AcceptKey -ComputerName $screenip -Credential $lincred
Invoke-SSHCommand -Index $sessionid.sessionid -Command $command -ErrorAction SilentlyContinue | Out-Null

$RunTime = New-TimeSpan -Start $StartTime -End (Get-Date)
Write-Host Process took $RunTime.Minutes minutes and $RunTime.Seconds seconds -ForegroundColor Green
