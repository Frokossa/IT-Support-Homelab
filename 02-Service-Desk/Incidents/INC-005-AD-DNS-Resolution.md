# INC-005 — Active Directory DNS resolution failure

**Type:** Simulated incident · **Priority:** P3 (Medium) · **Category:** Network / DNS  
**Affected user:** Alice Smith (Sales, fictional) · **Status:** Resolved — pending user confirmation  
**Environment:** Windows 11 Enterprise, DC01, OPNsense, Proxmox

> **Numbering note:** The original uploaded document filename starts with `INC-006`, but the incident heading and linked knowledge-base article identify this exercise as **INC-005**. The portfolio uses the document's incident ID.

## Reported issue
The domain-joined client could reach the network but failed to resolve `corp.lab` and access resources reliably by hostname.

## Investigation
1. Inspected `ipconfig /all`; DNS was incorrectly set to **10.10.10.1** (OPNsense).
2. Successfully pinged DC01 at **10.10.10.10**, confirming basic IP connectivity.
3. Confirmed `nslookup corp.lab` failed against the client's configured resolver.
4. Queried `nslookup corp.lab 10.10.10.10` successfully.

## Root cause
The client used the lab firewall as its DNS server instead of the Active Directory DNS server. OPNsense was not configured to resolve the internal `corp.lab` zone.

## Corrective action
Changed the preferred DNS server to **10.10.10.10**, retained DHCP for IPv4 addressing and cleared the resolver cache with `ipconfig /flushdns`.

## Validation
- `nslookup corp.lab` succeeded after correction.
- Active Directory LDAP SRV lookup succeeded.
- The user account could access the Sales folder through the mapped `S:` drive.

## Prevention and lessons learned
Confirm OPNsense Kea DHCP advertises **10.10.10.10** to domain clients. Successful ping tests do not establish working DNS. Query the known DNS server directly to isolate resolver configuration errors.

See [KB-003: Troubleshoot AD DNS resolution](../Knowledge-Base/KB-003-AD-DNS-Resolution.md).

*Personal homelab simulation; all users and incidents are fictional.*
