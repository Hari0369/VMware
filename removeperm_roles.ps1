Set-PowerCLIConfiguration -Scope Session -WebOperationTimeoutSeconds -1 -Confirm:$false
Set-PowerCLIConfiguration -InvalidCertificateAction ignore -confirm:$false

$vcname = Read-Host" Enter vCenter FQDN name"
Connect-VIServer $vcname -User.

#remove Permissions
foreach($role in Get-VIRole *PCS*)
{
Get-VIPermission | Where {$_.Role –eq “$role”} | Remove-VIPermission -Confirm:$false
}

#Remove NVS Roles
Get-VIRole *PCS* | Remove-VIRole -Confirm:$false