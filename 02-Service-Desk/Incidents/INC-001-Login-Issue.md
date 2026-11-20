# INC-001 — Domain user unable to sign in

**Type:** Simulated incident · **Priority:** P3 (Medium) · **Category:** Account / Login  
**Affected user:** Alice Smith (Sales, fictional) · **Status:** Resolved — pending user confirmation  
**Environment:** Windows 11 Enterprise, Windows Server 2025, Active Directory (`corp.lab`)

## Reported issue
The user reported an incorrect-password message and inability to access Sales departmental files.

## Investigation
1. Verified the Active Directory account was enabled and not locked out.
2. Checked that the password was not expired and did not require changing.
3. Attempted to reproduce the reported problem with the existing test account.
4. Successfully signed in as `CORP\alice.smith`.

## Validation
- Confirmed the Departments (`S:`) drive was available.
- Opened the Sales folder and successfully created, edited and deleted a temporary file.
- The sign-in issue did not recur during testing.

## Findings and resolution
**Root cause:** Undetermined; the failure could not be reproduced. No password reset or configuration changes were required.  
**Resolution category:** Unable to reproduce / working as expected.

**Closure recommendation:** Obtain user confirmation or follow the organisation's incident-closure policy; successful technician testing alone does not establish user confirmation.

## Example user communication
> Hello Alice,  
> I've checked your account and confirmed it is enabled and not locked out. I couldn't reproduce the sign-in issue and was able to access the required departmental files during testing, so I haven't reset the password. Could you confirm whether sign-in is now working for you?  
> IT Service Desk

## Lesson learned
Reproduce the issue and verify account status before changing credentials. Avoid claiming a root cause without evidence.

*Personal homelab simulation; all users and incidents are fictional.*
