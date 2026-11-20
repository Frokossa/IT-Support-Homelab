# Session 1 — Proxmox Virtual Machine Backups

**Environment:** Proxmox VE, OPNsense, Windows Server 2025 and Windows 11 Enterprise  
**Outcome:** Three backup tasks completed successfully; restoration was **not** tested in this session.

## Objective
Create backup archives for the three active lab VMs and configure dedicated backup storage for later recovery testing.

## Storage setup
- Inspected storage with Proxmox and read-only Linux commands including `lsblk`, `blkid` and `pvesm status`.
- Identified a disposable **1 TB HDD** separate from the host's NVMe system/VM storage.
- Reconfigured the disk with **ext4**, registered it as **backup-hdd** and enabled Proxmox backup content.

## Backup results

| VM | Role | Destination | Result | Archive size |
|---|---|---|---|---|
| 100 | OPNsense firewall | `local` | `TASK OK` | 536.74 MiB |
| 101 | DC01: Active Directory and DNS | `backup-hdd` | `TASK OK` | Not recorded |
| 102 | Windows 11 domain client | `backup-hdd` | `TASK OK` | Not recorded |

Backup mode was **Stop** (offline), with **ZSTD** compression.

## Verification
- Confirmed the DC01 archive existed on `backup-hdd`.
- Restarted DC01 and checked AD DS, DNS and Netlogon service operation.
- Verified the Windows 11 client's DNS resolution after backup.
- The VM 102 backup task reported `TASK OK`; archive listing and size were identified as an outstanding evidence step.

## Limitations
The backup tasks completed, but no restoration was proven **in this session**. All backup media are on the same Proxmox host, so this arrangement does not protect against full host loss. A VM backup does not replace supported AD recovery procedures.

**Next exercise:** [Isolated OPNsense restoration](Session-2-OPNsense-Restore.md).
