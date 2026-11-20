# IT Support - System Diagnostics
# Read-only troubleshooting script

$ReportPath = Join-Path $env:USERPROFILE "Desktop\IT-Support-Report.txt"

"IT SUPPORT DIAGNOSTIC REPORT" | Out-File $ReportPath
"Generated: $(Get-Date)" | Out-File $ReportPath -Append

"`n=== COMPUTER INFORMATION ===" | Out-File $ReportPath -Append
Get-ComputerInfo |
    Select-Object CsName, WindowsProductName, OsVersion |
    Format-List |
    Out-File $ReportPath -Append

"`n=== NETWORK CONFIGURATION ===" | Out-File $ReportPath -Append
Get-NetIPConfiguration |
    Format-List InterfaceAlias, IPv4Address, IPv4DefaultGateway, DNSServer |
    Out-File $ReportPath -Append

"`n=== IMPORTANT SERVICES ===" | Out-File $ReportPath -Append
Get-Service -Name Dhcp, Dnscache, wuauserv |
    Format-Table DisplayName, Status, StartType -AutoSize |
    Out-File $ReportPath -Append

"`n=== STOPPED AUTOMATIC SERVICES ===" | Out-File $ReportPath -Append
Get-Service |
    Where-Object {
        $_.StartType -eq 'Automatic' -and
        $_.Status -ne 'Running'
    } |
    Select-Object DisplayName, Status, StartType |
    Format-Table -AutoSize |
    Out-File $ReportPath -Append

"`n=== END OF REPORT ===" | Out-File $ReportPath -Append

Write-Host "Report saved to: $ReportPath"
