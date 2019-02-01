$ComputerName = Read-Host -Prompt 'Computer Name or IP'

$myPath = "\\$($ComputerName)\C$\Program Files (x86)\Genesis Gaming"
# get actual Acl entry
$myAcl = Get-Acl "$myPath"
$myAccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("PNG\Domain Users","FullControl","Allow")
# prepare new Acl
$myAcl.SetAccessRule($myAccessRule)
Set-Acl "$MyPath" $myAcl
# check if added entry present
Get-Acl "$myPath" | fl