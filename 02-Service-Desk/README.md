# Week 2 — Service Desk & Incident Management

## Objective

Practise common first-line IT support workflows in a simulated Windows 11 and Windows Server 2025 Active Directory environment, including investigation, resolution verification, and knowledge-base documentation.

## Simulated incidents

| ID | Scenario | Investigation and outcome |
|---|---|---|
| INC-001 | User authentication complaint | Investigated a reported sign-in problem; the issue could not be reproduced during testing. |
| INC-002 | Account lockout | Reproduced an Active Directory lockout using a five-attempt policy; examined Windows Event ID 4740 and unlocked the test account. |
| INC-003 | Shared folder access denied | Tested departmental access by removing and restoring a user's Finance security-group membership. |
| INC-004 | Drive-mapping policy test | Disabled a GPO link and verified that an existing S: mapping persisted; restored policy application. |
| INC-005 | DNS name-resolution failure | Intentionally misconfigured client DNS, diagnosed the problem, and restored the correct configuration. |

## Knowledge-base articles

1. **KB-001:** Unlock an Active Directory user account
2. **KB-002:** Troubleshoot shared folder access denied
3. **KB-003:** Troubleshoot Active Directory DNS resolution

## Skills demonstrated

- Incident logging and structured troubleshooting
- Active Directory account administration and security groups
- Windows Event Viewer investigation
- Group Policy and mapped-drive diagnostics
- DNS troubleshooting and resolution verification
- Clear technical documentation and knowledge sharing

## Incident reports

| Report | Scenario |
|---|---|
| [INC-001](Incidents/INC-001-Login-Issue.md) | User sign-in complaint — could not reproduce |
| [INC-002](Incidents/INC-002-AD-Account-Lockout.md) | Active Directory account lockout and Event ID 4740 |
| [INC-003](Incidents/INC-003-Finance-Folder-Access-Denied.md) | Finance folder access and security-group membership |
| [INC-004](Incidents/INC-004-GPO-Drive-Mapping.md) | GPO link and persistent S: drive mapping |
| [INC-005](Incidents/INC-005-AD-DNS-Resolution.md) | DNS resolver misconfiguration |

## Knowledge-base documentation

| Article | Procedure |
|---|---|
| [KB-001](Knowledge-Base/KB-001-AD-Account-Lockout.md) | Unlock a domain user account |
| [KB-002](Knowledge-Base/KB-002-Shared-Folder-Access.md) | Troubleshoot departmental folder access |
| [KB-003](Knowledge-Base/KB-003-AD-DNS-Resolution.md) | Troubleshoot AD DNS resolution |

The source Word documents were adapted into readable Markdown for GitHub. Descriptions reflect confirmed lab observations and are not commercial ticket records.

## Disclaimer

All incidents were simulated in a personal homelab using fictional users and deliberately introduced faults. These are not records of commercial service desk tickets.
