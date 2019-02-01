$ComputerName = Read-Host -Prompt 'Computer Name or IP'

$Path2 = '\\$ComputerName\c$\Program Files x86\Genesis Gaming\Pitwatch\PitWatch.ini'

Copy-Item -Path '\\mlvsrvapp007\GenesisBravo\Production Config Files\PitWatch.ini' -Destination '$Path2' -Force