# Session 2 — Isolated OPNsense Disaster Recovery Test

**Source:** VM 100 OPNsense backup on `local`  
**Restored copy:** VM 200 · **Outcome:** Offline restore and boot test passed.

## Objective
Test VM recovery without overwriting or disturbing the existing firewall and domain infrastructure.

## Procedure
1. Selected the saved OPNsense backup archive.
2. Restored it to a **new VM ID 200**, with recovered disk on `local-lvm`.
3. Disabled automatic start following restoration.
4. Confirmed the restore task ended with **`TASK OK`**.
5. Disconnected or removed restored network adapters before powering on the VM.
6. Started VM 200 and inspected its OPNsense console.

## Test results

| Check | Observed result |
|---|---|
| Proxmox restore task | Passed — `TASK OK` |
| Restored operating system boot | Passed |
| OPNsense console accessible | Passed |
| Saved LAN address | `10.10.10.1/24` visible |
| WAN address | Blank while isolated |
| Network isolation | Confirmed |
| Live routing, DHCP and firewall behaviour | **Not tested** |

## Safety controls
- Restored to VM 200 instead of overwriting original VM 100.
- Kept network adapters disconnected to avoid introducing a second default gateway or DHCP server.
- Did not modify the original firewall, domain controller or Windows workstation during recovery testing.

## Conclusion
The backup restored into an **offline bootable OPNsense VM**, retaining the displayed LAN IP address. This supports successful VM-level restoration, **not** end-to-end recovery of network services.
