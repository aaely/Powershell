$ComputerName = Read-Host -Prompt 'Computer Name or IP'

$Share = "\\mlvsrvapp007\GenesisBravo\Production Config Files\CardWatch.exe.config"

$Path1 = "\\$($ComputerName)\c$\Program Files (x86)\CardWatch\CardWatch.exe.config"

$Path2 = "\\$($ComputerName)\c$\Program Files (x86)\Genesis Gaming\CardWatch\CardWatch.exe.config"

$Path3 = "\\$($ComputerName)\c$\Program Files\Genesis Gaming\CardWatch\CardWatch.exe.config"

$Path4 = "\\$($ComputerName)\c$\Program Files\CardWatch\CardWatch.exe.config"

Copy-Item -Path $Share -Destination $Path1 -Force

Copy-Item -Path $Share -Destination $Path2 -Force

Copy-Item -Path $Share -Destination $Path3 -Force

Copy-Item -Path $Share -Destination $Path4 -Force