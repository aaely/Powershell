$computer = Read-Host -Prompt "Enter Computer Name"
    
    Write-Host "Connect to $computer..."

    $nics = Get-WmiObject Win32_NetworkAdapterConfiguration -ComputerName $computer -ErrorAction Inquire | Where{$_.IPEnabled -eq "TRUE"}

    foreach($nic in $nics)

    {

        Write-Host "`tExisting DNS Servers " $nic.DNSServerSearchOrder

        $x = $nic.SetDNSServerSearchOrder()

        $y = $nic.EnableDHCP()

        if($x.ReturnValue -eq 0)

        {

            Write-Host "`tSuccessfully Changed DNS Servers on " $computer

        }

        else

        {

            Write-Host "`tFailed to Change DNS Servers on " $computer

        }

    }