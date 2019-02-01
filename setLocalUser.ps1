$computer = Read-Host -Prompt 'Computer Name or IP'

Get-Service -ComputerName $computer -Name WinRM | Start-Service

Invoke-Command -ComputerName $computer -ScriptBlock { Remove-LocalUser -Name 'admin' }

$SecurePassword = ConvertTo-SecureString "Password1" -AsPlainText -Force
Invoke-Command -ComputerName mlvws111 -ScriptBlock { Set-LocalUser -Name "Administrator" }
Invoke-Command -ComputerName mlvws111 -ScriptBlock {  Enable-LocalUser -Name "Administrator" }


Get-Service -ComputerName $computer -Name WinRM | Stop-Service

Get-Service -ComputerName $computer -Name WinRM 