$computer = Read-Host -Prompt 'Computer Name or IP'
$scriptBlock = {
    function Remove-UserProfile
    {
    # This is only an PSv5 cmdlet, if you have legacy PS versions, OS versions not running PSv5, then this will fail.
    # So, plan for this using ADSI
    Remove-LocalUser -Name admin
    }
    Remove-UserProfile
    }

Invoke-Command -ComputerName $computer -ScriptBlock $scriptBlock
