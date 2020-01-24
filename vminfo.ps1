

Get-VM $vmname | Select Name,@{N="IP Address";E={@($_.guest.IPAddress[0])}}, @{N="Cluster";E={Get-Cluster -VM $_}}, `
@{N="ESX Host";E={Get-VMHost -VM $_}}, `
@{N="Datastore";E={Get-Datastore -VM $_}} | Ft -AutoSize | Sort-Object -Descending cluster