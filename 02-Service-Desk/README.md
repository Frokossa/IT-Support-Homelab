# Week 2 — Service Desk & Incident Management

## Objective

Practise common first-line IT support workflows in a simulated Windows 11 and Windows Server 2025 Active Directory environment, including investigation, resolution verification, and knowledge-base documentation.

## Simulated incidents

| ID | Scenario | Investigation and outcome |
|---|---|---|
| INC-001 | User authentication complaint | Investigated a reported sign-in problem; the issue could not be reproduced during testing. |
| INC-002 | Account lockout | Reproduced an Active Directory lockout using a five-attempt policy; examined Windows Event ID 4740 and unlocked the test account. |
| INC-003 | Shared folder access denied | Tested departmental access by removing and restoring a user's Finance security-group membership. |
| INC-004 | Missing network drive mapping | Investigated Group Policy linking and drive-mapping behaviour on the domain-joined workstation. |
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

## Evidence

Supporting incident reports and knowledge-base articles will be linked here once the sanitised source documents are uploaded.

## Disclaimer

All incidents were simulated in a personal homelab using fictional users and deliberately introduced faults. These are not records of commercial service desk tickets.
