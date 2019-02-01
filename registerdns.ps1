$ComputerName = Read-Host -Prompt "Enter Computer Name or IP"
$x = ([WMIClass]"\\$ComputerName\ROOT\CImv2:Win32_Process").Create("cmd.exe /c ipconfig /registerdns")

if($x.ReturnValue -eq 0) {
    Write-Host("dns registered successfully")
}
else {
    Write-Host("error")
}