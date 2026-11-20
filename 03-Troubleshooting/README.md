# Week 3 — Windows Troubleshooting & PowerShell

## Objective
Practise structured, evidence-based diagnosis of Windows networking, Active Directory DNS, Group Policy, Windows services and event logs. Develop a read-only support diagnostic script.

## Session reports

| Session | Topic | Evidence |
|---|---|---|
| 1 | Network connectivity, DNS and routing | [Network diagnostics](Sessions/Session-1-Network-Diagnostics.md) |
| 2 | Active Directory and DNS | [DNS and DC discovery](Sessions/Session-2-AD-DNS-Troubleshooting.md) |
| 3 | Group Policy | [GPO diagnostics](Sessions/Session-3-GPO-Troubleshooting.md) |
| 4 | Windows services and Event Viewer | [Service diagnostics](Sessions/Session-4-Services-and-Event-Viewer.md) |
| 5 | PowerShell troubleshooting | [Script development report](Sessions/Session-5-PowerShell-Diagnostics.md) |

## PowerShell diagnostic utility

[View source: **IT-Support-Diagnostics.ps1**](Scripts/IT-Support-Diagnostics.ps1)

The script writes a report to the current user's Desktop with system identification, network configuration, key service states and stopped automatic services. It does not modify the Windows configuration.

> **Data handling:** Generated diagnostic reports can include device names, network configuration and other environment details. Review and redact report output before sharing it publicly.

## Skills demonstrated
`ipconfig`, `ping`, `nslookup`, `route print`, `nltest`, `gpupdate`, `gpresult`, `net use`, Windows Event Viewer, Services, PowerShell and technical documentation.

## Scope
These exercises were conducted in a personal, isolated homelab. Where a result was not recorded or was inconclusive, the corresponding session report states that limitation explicitly.
