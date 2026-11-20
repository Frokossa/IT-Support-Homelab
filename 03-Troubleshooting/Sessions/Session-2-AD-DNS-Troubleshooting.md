# Session 2 — Active Directory and DNS troubleshooting

**Environment:** DC01 (Windows Server 2025, `10.10.10.10`), Windows 11 Enterprise, `corp.lab`  
**Outcome:** All reported checks passed.

## Objective
Verify DNS records, hostname resolution, Active Directory LDAP service records and domain controller discovery.

## Investigation
1. Opened **DNS Manager** on DC01; confirmed an A record for `dc01.corp.lab` resolving to `10.10.10.10` and the presence of an AD LDAP SRV record.
2. Ran `nslookup dc01.corp.lab` from the client; the hostname resolved correctly to `10.10.10.10`.
3. Ran `nslookup -type=SRV _ldap._tcp.dc._msdcs.corp.lab`; the LDAP SRV lookup succeeded.
4. Ran `nltest /dsgetdc:corp.lab /force`; Windows successfully discovered DC01.

## Results

| Diagnostic test | Result |
|---|---|
| DC01 A record and LDAP SRV record in DNS Manager | Passed |
| Hostname resolution | Passed |
| Client LDAP SRV lookup | Passed |
| Domain controller discovery | Passed |

## Conclusion
The Windows client could locate the domain controller and resolve the required AD DNS records. This test did not identify a DNS fault.
