
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

- Domain: `corp.lab`
- Domain controller: `DC01`
- Windows 11 domain-joined workstation
- Isolated lab network: `10.10.10.0/24`
- OPNsense firewall providing routing and DHCP

## Project Highlights

### Active Directory & Group Policy
Created users, organisational units and security groups. Configured NTFS permissions, departmental shares and automatic drive mapping.

### Service Desk
Completed five simulated incidents covering account lockouts, file access, authentication, Group Policy and DNS. Produced three knowledge-base articles.

### Troubleshooting & PowerShell
Used Windows diagnostic tools to investigate network, DNS, Group Policy and service issues. Created a PowerShell script that exports system diagnostics.

### Backup & Disaster Recovery
Configured VM backups, restored an isolated OPNsense VM and verified a Windows Server System State backup.

## Repository Contents

- `01-Active-Directory/`
- `02-Service-Desk/`
- `03-Troubleshooting/`
- `04-Backup-Recovery/`
- `05-Network-Documentation/`

## About This Project

This is a personal training environment using simulated incidents and fictional user accounts. It does not represent commercial IT support employment.
