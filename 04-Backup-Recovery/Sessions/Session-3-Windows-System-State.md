# Session 3 — Windows Server System State Backup

**Server:** DC01 (Windows Server 2025, Active Directory `corp.lab`)  
**Outcome:** Backup completed; Windows backup catalogue reported System State recovery available. **No restoration was performed.**

## Objective
Create a separate Windows Server backup destination and verify Active Directory System State backup availability without interrupting the live domain controller.

## Setup
1. Installed the **Windows Server Backup** feature on DC01.
2. Provisioned a separate **100 GiB** virtual disk for VM 101 on Proxmox storage `backup-hdd`.
3. Initialised the disk as GPT and formatted it with NTFS.
4. Assigned drive letter **E:** and label `DC01-Backup`; about 99.89 GB was free before backup.

## Backup and catalogue commands
Run from an elevated shell on DC01:

```powershell
wbadmin start systemstatebackup -backupTarget:E:
wbadmin get versions -backupTarget:E:
```

## Results

| Check | Recorded result |
|---|---|
| Backup operation | Successful |
| Destination | Fixed disk `E:` |
| Displayed backup date/time | 22 October 2026, 15:41 |
| Catalogue version identifier | `10/22/2026-22:41` |
| System State recovery offered | Yes |
| Restore carried out | **No** |

The differing times shown in the backup interface and version identifier were recorded but not investigated. The catalogue advertised Volume, File, Application and System State recovery options.

## Recovery considerations
- System State contains Windows-aware recovery information for AD and other critical server components; this differs from a hypervisor disk-level VM backup.
- Non-authoritative restore ordinarily synchronises directory changes from healthy replication partners; authoritative recovery can mark selected restored data for replication precedence.
- This lab has only **one domain controller**, so it has no healthy replica to provide newer directory changes after a restore.

## Limitations and safety
- No System State restoration was attempted on DC01.
- The virtual backup disk shares the physical HDD with Proxmox backup archives, and is vulnerable to loss of that disk or host.
- The separate disk was intended to be excluded from later Proxmox VM backups; confirm the virtual disk's Backup flag before relying on that arrangement.
- A successful backup and catalogue query **do not** prove that Active Directory can be restored.
