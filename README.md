
# IT Support & Service Desk Homelab

A four-day hands-on IT Support homelab built to demonstrate practical skills in Windows administration, networking, troubleshooting, incident management and disaster recovery.

## Technologies

- Windows Server 2025 and Windows 11 Enterprise
- Active Directory Domain Services and Group Policy
- DNS, DHCP, TCP/IP and OPNsense
- Proxmox VE virtualisation
- PowerShell and Windows Event Viewer
- Windows Server Backup and Proxmox VM backups

## Lab Environment

The lab uses Proxmox VE to host an isolated
Windows domain environment.

| System | Role |
|--------|------|
| OPNsense (VM 100) | Firewall, routing and DHCP |
| DC01 (VM 101) | Active Directory and DNS |
| Windows 11 (VM 102) | Domain-joined workstation |

**Domain:** corp.lab  
**Lab network:** 10.10.10.0/24

## Project Highlights

### 1. Active Directory & Group Policy
- Created user accounts, OUs and security groups.
- Configured NTFS permissions and departmental shares.
- Used Group Policy to map network drives.

### 2. Service Desk & Incident Management
- Investigated five simulated support incidents.
- Troubleshot account lockouts, permissions and DNS.
- Created three knowledge-base articles.

### 3. Windows Troubleshooting & PowerShell
- Used ipconfig, nslookup, nltest and gpresult.
- Investigated Windows services and Event Viewer logs.
- Developed a PowerShell system diagnostic script.

### 4. Backup & Disaster Recovery
- Configured Proxmox backup storage.
- Backed up three virtual machines.
- Successfully restored an isolated OPNsense VM.
- Created and verified a Windows Server
  System State backup.
  
## Repository Contents

- `01-Active-Directory/`
- `02-Service-Desk/`
- `03-Troubleshooting/`
- `04-Backup-Recovery/`
- `05-Network-Documentation/`

## About This Project

This is a personal training environment using simulated incidents and fictional user accounts. It does not represent commercial IT support employment.
