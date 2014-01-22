PowerShell
==========

Useful PowerShell Utilities

1 *Microsoft.PowerShell_profile.ps1* (Profile folder) is the PowerShell profile script I use. It has 5 different modes
 * default
 * EndUser
 * Developer
 * SharePoint
 * Admin

 based on the mode you are running, it will change screen colors and title bar to indicate to you.

2 *removeWirelessProfile.ps1*

 I have run into issues with Windows 8.1 creating many wireless profiles on my computer over time for a single hidden
 wireless network. I use this script to rip through them and delete them all. More info at
 http://www.jptacek.com/2014/01/deleting-win81-wireless-profiles/
 
3 *setDNS*

Sometimes when I at various locations, DNS errors go through a crazy proxy. This script allows you to swap between the "local" (aka, network set DNS) and Google's DNS server. setDNS -location local will set the DNS to the one for the local network. setDNS -location google will set the DNS to Google's servers
