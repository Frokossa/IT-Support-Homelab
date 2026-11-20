# Session 1 — Network connectivity and routing

**Environment:** Windows 11 Enterprise, Windows Server 2025, OPNsense, Proxmox · **Domain:** `corp.lab`  
**Outcome:** Four reported network diagnostic checks passed; DC01 connectivity was not separately recorded.

## Objective
Validate client IP configuration, default gateway reachability, AD domain name resolution and IPv4 default routing.

## Commands and results

| Check | Command | Observed result |
|---|---|---|
| IPv4 configuration | `ipconfig /all` | Passed — valid `10.10.10.x` address |
| Gateway connectivity | `ping 10.10.10.1` | Passed |
| DC01 connectivity | `ping 10.10.10.10` | Not separately recorded |
| Domain name resolution | `nslookup corp.lab` | Passed |
| Default route | `route print -4` | Passed — default route via `10.10.10.1` |

## Interpretation
The client had a valid address on `10.10.10.0/24`; its OPNsense gateway responded; internal domain resolution succeeded; and the expected IPv4 default route existed.

## Conclusion
No issue was identified in the four documented checks. A separate result for the domain-controller ping is not claimed.

## Lessons
Use `ipconfig` for addressing, `ping` for basic connectivity, `nslookup` for DNS and `route print` for route selection. Record unknown results separately from passed tests.
