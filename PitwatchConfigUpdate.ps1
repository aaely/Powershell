$ComputerName = Read-Host -Prompt 'Computer Name or IP'

$Share = "\\mlvsrvapp007\GenesisBravo\Production Config Files\PitWatch.ini"

$Path1 = "\\$($ComputerName)\c$\Program Files (x86)\PitWatch\PitWatch.ini"

$Path2 = "\\$($ComputerName)\c$\Program Files (x86)\Genesis Gaming\Pitwatch\PitWatch.ini"

$Path3 = "\\$($ComputerName)\c$\Program Files\Genesis Gaming\Pitwatch\PitWatch.ini"

$Path4 = "\\$($ComputerName)\c$\Program Files\PitWatch\PitWatch.ini"

Copy-Item -Path $Share -Destination $Path1 -Force

Copy-Item -Path $Share -Destination $Path2 -Force

Copy-Item -Path $Share -Destination $Path3 -Force

Copy-Item -Path $Share -Destination $Path4 -Force