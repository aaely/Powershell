    $computer = Read-Host -Prompt "Computer Name or IP: "

    $nics = Get-WmiObject Win32_NetworkAdapterConfiguration -ComputerName $computer -ErrorAction Inquire | Where{$_.IPEnabled -eq "TRUE"}

    $newDNS = "10.123.20.101","10.10.19.26"

    foreach($nic in $nics)

    {

        Write-Host "`tExisting DNS Servers " $nic.DNSServerSearchOrder

        $x = $nic.SetDNSServerSearchOrder($newDNS)

        if($x.ReturnValue -eq 0)

        {

            Write-Host "`tSuccessfully Changed DNS Servers on " $computer

        }

        else

        {

            Write-Host "`tFailed to Change DNS Servers on " $computer

        }

    }