# INC-002 — Active Directory account lockout

**Type:** Simulated incident · **Priority:** P3 (Medium) · **Category:** Authentication  
**Affected user:** Ben Jones (Finance, fictional) · **Status:** Resolved — pending user confirmation  
**Environment:** Windows Server 2025, Active Directory (`corp.lab`), Windows 11 Enterprise

## Reported issue
The fictional user could not sign in because the domain account was locked, preventing Finance folder access.

## Investigation
1. Confirmed the domain lockout policy threshold was **five** unsuccessful sign-ins.
2. Deliberately reproduced a lockout in the isolated lab.
3. Observed the Windows lockout message and verified the account status in Active Directory Users and Computers.
4. Examined the DC01 Security event log and identified **Event ID 4740** (account locked out), including the caller computer field.

## Root cause
Five intentionally incorrect authentication attempts activated the configured lockout policy.

## Corrective action
Unlocked `CORP\ben.jones` in Active Directory Users and Computers without resetting the password.

## Validation
- Signed in successfully using the existing credentials.
- Confirmed the Departments (`S:`) drive was mapped.
- Created, edited and removed a test file in Finance.
- Verified Sales access remained denied and Public remained accessible.

**Result:** All recorded tests passed. Follow up for user confirmation before closure.

## Lessons learned
Check lockout status before resetting passwords; investigate Event ID 4740 and failed-authentication sources; validate access to relevant resources after restoring an account.

See [KB-001: Unlock an AD account](../Knowledge-Base/KB-001-AD-Account-Lockout.md).

*Personal homelab simulation; all users and incidents are fictional.*
