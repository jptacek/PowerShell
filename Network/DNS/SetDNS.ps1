param([string]$location = "local")

function Set-DNSGoogle {
	$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"
	$googleDNS = "8.8.8.8", "8.8.4.4"
	$wmi.SetDNSServerSearchOrder($googleDNS)
}

function Set-DNSLocal {
	$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"
	$wmi.SetDNSServerSearchOrder()

}

Write-Host Input parameter $location
if ($location -eq "local") {
	Set-DNSLocal
	Write-Host DNS Set to local
}
elseif ($location -eq "google") {
	Set-DNSGoogle
	Write-Host DNS Set to Google
}
else {
	Write-Host DNS not changed

}