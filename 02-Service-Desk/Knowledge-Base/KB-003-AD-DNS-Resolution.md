# KB-003 — Troubleshoot Active Directory DNS resolution

**Category:** Networking / DNS / Active Directory · **Audience:** First-line IT Support  
**Related incident:** [INC-005 — AD DNS resolution failure](../Incidents/INC-005-AD-DNS-Resolution.md)

## Symptoms
A domain-joined client is connected to the network but cannot access resources using server names, discover domain controllers, or complete name-dependent domain functions.

## Prerequisites
Permission to inspect and modify the client network settings, and knowledge of the organisation's approved DNS configuration.

## Procedure

### 1. Review IP configuration
```cmd
ipconfig /all
```
For this lab, expect a DHCP client address in `10.10.10.100–200`, gateway `10.10.10.1`, internal DNS server **10.10.10.10**, and AD domain `corp.lab`.

### 2. Check network reachability
```cmd
ping 10.10.10.1
ping 10.10.10.10
```
A successful ping establishes basic IP connectivity, not functioning DNS. ICMP may be blocked in other environments.

### 3. Compare DNS queries
```cmd
nslookup corp.lab
nslookup corp.lab 10.10.10.10
```
If direct queries to DC01 succeed but default queries fail, investigate the client's configured DNS resolver.

### 4. Validate Active Directory service records
```cmd
nslookup -type=SRV _ldap._tcp.dc._msdcs.corp.lab
```

### 5. Correct approved client DNS settings
Open **Windows + R → ncpa.cpl → Ethernet → Properties → IPv4**. Set preferred DNS to the approved internal AD DNS server (**10.10.10.10** in this lab). Leave IP addressing on DHCP unless otherwise required.

### 6. Refresh and verify
```cmd
ipconfig /flushdns
ipconfig /all
nslookup corp.lab
nslookup -type=SRV _ldap._tcp.dc._msdcs.corp.lab
```
Confirm affected shares and other hostname-dependent resources are working.

## Escalate if
The correct DNS server fails to answer, AD SRV records are absent, the DNS service fails, multiple users are affected, or a domain-wide issue is suspected.

## Prevention and security
Configure OPNsense Kea DHCP to advertise internal DNS **10.10.10.10**. Avoid public alternate DNS entries for domain clients unless explicitly supported by the organisation's architecture. Record the original and corrected configuration and the test results.

*Personal homelab knowledge-base example.*
