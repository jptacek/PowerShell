$profile = "Network Name"
$total = 32
$count = 2
Start-Transcript
netsh wlan show profiles
do {
 $profile = $profile + " " +$count
 $execCommand = "netsh wlan delete profile name=""$profile"""
 Write-Host($execCommand)
 Invoke-Expression $execCommand
 $count++
}
while ($count -le $total)
