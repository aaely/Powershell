$ComputerName = Read-Host -Prompt 'Computer Name or IP'

$Share = "\\mlvsrvapp007\GenesisBravo\Production Config Files\BravoReports.exe.config"

$Path1 = "\\$($ComputerName)\c$\Program Files (x86)\BravoReports\BravoReports.exe.config"

$Folder1 = "\\$($ComputerName)\c$\Program Files (x86)\BravoReports"

$Folder2 = "\\$($ComputerName)\c$\Program Files (x86)\Genesis Gaming"

$Path2 = "\\$($ComputerName)\c$\Program Files (x86)\Genesis Gaming\BravoReports\BravoReports.exe.config"

$Path3 = "\\$($ComputerName)\c$\Program Files\Genesis Gaming\BravoReports\BravoReports.exe.config"

$Path4 = "\\$($ComputerName)\c$\Program Files\BravoReports\BravoReports.exe.config"

$ACL1 = Get-Acl $Folder1 

$ACL2 = Get-Acl $Folder2 

$Ar = New-Object  system.security.accesscontrol.filesystemaccessrule("PNG\Domain Users","FullControl","Allow")

$ACL2.SetAccessRule($Ar)

$ACL1.SetAccessRule($Ar)

Set-Acl "$Folder1" $ACL1

Set-Acl "$Folder2" $ACL2

Copy-Item -Path $Share -Destination $Path1 -Force

Copy-Item -Path $Share -Destination $Path2 -Force

Copy-Item -Path $Share -Destination $Path3 -Force

Copy-Item -Path $Share -Destination $Path4 -Force

New-Item -ItemType Directory -Path $Folder1

New-Item -ItemType Directory -Path $Folder2