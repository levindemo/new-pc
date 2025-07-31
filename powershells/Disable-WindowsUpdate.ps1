# 关闭自动更新
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -Value 2 -Force

# 禁止自动更新服务
Set-Service -Name "wuauserv" -StartupType Disabled -Status Stopped

# 停止计划任务
Stop-ScheduledTask -TaskPath "\Microsoft\Windows\WindowsUpdate\" -TaskName "Scheduled Start"
Stop-ScheduledTask -TaskPath "\Microsoft\Windows\WindowsUpdate\" -TaskName "Automatic Updates"

# 删除计划任务
# 注意: 删除计划任务可能导致无法手动更新。
# 如果需要，可以注释掉以下两行。
# Remove-ScheduledTask -TaskPath "\Microsoft\Windows\WindowsUpdate\" -TaskName "Scheduled Start"
# Remove-ScheduledTask -TaskPath "\Microsoft\Windows\WindowsUpdate\" -TaskName "Automatic Updates"

Write-Host "Windows AutoUpdate is suspended"