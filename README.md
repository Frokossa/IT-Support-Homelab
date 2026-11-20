# IT Support & Service Desk Homelab

A **four-week**, hands-on personal IT support homelab demonstrating Windows administration, networking, incident handling, troubleshooting, automation and disaster recovery. Exercises use fictional accounts and deliberately simulated faults rather than commercial support tickets.

## Explore the portfolio

| Area | Evidence |
|---|---|
| [01 — Active Directory](01-Active-Directory/README.md) | Organisational units, test users, security groups, shared-folder permissions and Group Policy mapping; screenshots and access test report |
| [02 — Service Desk](02-Service-Desk/README.md) | Five simulated incident investigations and three knowledge-base articles |
| [03 — Troubleshooting](03-Troubleshooting/README.md) | Five Windows diagnostic sessions and [read-only PowerShell script](03-Troubleshooting/Scripts/IT-Support-Diagnostics.ps1) |
| [04 — Backup & Recovery](04-Backup-Recovery/README.md) | Proxmox VM backups, isolated OPNsense restore test and Windows Server System State backup |
| [05 — Network Documentation](05-Network-Documentation/README.md) | Logical topology diagram, infrastructure inventory, addressing, validated bridge assignments and troubleshooting quick reference |

## Technologies

- **Windows:** Windows Server 2025, Windows 11 Enterprise, Active Directory Domain Services, Group Policy, DNS and NTFS permissions
- **Networking:** DHCP, TCP/IP, virtual bridges, routing and OPNsense firewall
- **Virtualisation:** Proxmox VE, virtual machines, snapshot/backup administration and restore testing
- **Diagnostics:** PowerShell, Command Prompt, `ipconfig`, `ping`, `nslookup`, `nltest`, `gpresult` and Windows Event Viewer
- **Backup:** Proxmox VM backups, Windows Server Backup and `wbadmin`

## Environment

| System | Purpose |
|---|---|
| OPNsense (VM 100) | Firewall, routing and DHCP |
| DC01 (VM 101) | Windows Server 2025 domain controller: AD DS and DNS |
| Windows 11 (VM 102) | Domain-joined test workstation |
| Restored OPNsense (VM 200) | Network-isolated recovery-test VM |

The fictional Active Directory domain is `corp.lab`, using isolated lab subnet `10.10.10.0/24`.

## Highlights

**Identity and access:** Set up user and group administration, departmental shares, NTFS permissions and a Group Policy drive mapping. Documented permission testing with fictional users.

**Simulated incident management:** Investigated account sign-in complaints, an account lockout (Windows Event ID 4740), missing group membership, Group Policy drive-mapping behaviour and a DNS configuration fault. Recorded validation and honest limitations rather than assuming a fault was reproduced.

**Windows troubleshooting and scripting:** Completed network, AD DNS, Group Policy, service and event-log investigations. Wrote a reusable **read-only** PowerShell diagnostic script to export system/network/service details.

**Backup and recovery:** Completed three Proxmox VM backups; restored OPNsense as an isolated VM and verified OS startup. Created and catalogued a Windows Server System State backup, **without performing an AD restoration**.

## Documentation and limitations

All activities were completed in a controlled, personal lab. The isolated OPNsense test demonstrated VM recovery to a bootable state but **not** full DHCP, firewall or routing service restoration. The Windows Server System State backup was confirmed in the backup catalogue but **not restored**. Backups remain on storage attached to the same physical host and are not a substitute for off-host disaster recovery.

This is a personal training project and **does not represent paid IT support employment**.
