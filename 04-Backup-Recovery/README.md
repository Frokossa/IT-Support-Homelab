# Week 4 — Backup & Disaster Recovery

## Objective
Configure and verify Proxmox VM backups, test non-destructive recovery of an isolated firewall VM, and complete a Windows Server System State backup without disrupting the lab.

## Evidence and session reports

| Session | Exercise | Recorded outcome |
|---|---|---|
| [1 — VM Backups](Sessions/Session-1-Proxmox-VM-Backups.md) | Dedicated storage and backups of VM 100, 101 and 102 | All three backup jobs completed with `TASK OK` |
| [2 — Recovery Test](Sessions/Session-2-OPNsense-Restore.md) | Restore OPNsense backup to separate VM 200 with adapters disconnected | Restore and OS boot passed; network services untested |
| [3 — Windows Server System State](Sessions/Session-3-Windows-System-State.md) | Install Windows Server Backup and run `wbadmin` on DC01 | System State backup succeeded and catalogue showed recovery option; no restore attempted |

## Key takeaways
- **Backup success is not the same as restore verification.** VM 200 passed an isolated boot test, not complete firewall/routing/DHCP failover.
- **System State availability is not proof of AD recovery.** An Active Directory restore was not attempted.
- **Storage risk remains.** Proxmox VM backups and Windows Server backup virtual disk reside on storage attached to the same physical Proxmox host. Host-wide loss is not covered.
- The restored OPNsense VM was isolated to prevent duplicate IP, DHCP or routing services on the active lab network.

## Related material
- [Network topology and asset inventory](../05-Network-Documentation/README.md)
- [Active Directory lab setup](../01-Active-Directory/README.md)

## Scope
Personal homelab exercises. No production systems or customer data were involved. The source documents and screenshots were reviewed to describe only observed results; the listed limitations are intentional.
