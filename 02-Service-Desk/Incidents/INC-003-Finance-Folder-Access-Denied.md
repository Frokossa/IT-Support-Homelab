# INC-003 — Finance folder access denied

**Type:** Simulated incident · **Priority:** P3 (Medium) · **Category:** File access / Permissions  
**Affected user:** Ben Jones (Finance, fictional) · **Status:** Resolved — pending user confirmation

## Reported issue
The user could sign in and see the mapped `S:` drive but could not access the Finance departmental folder.

## Investigation
1. Confirmed the Departments (`S:`) drive was visible.
2. Reproduced **Access Denied** for Finance and Public.
3. Inspected Active Directory security-group membership.
4. Identified that the fictional account had been removed from `GG_Finance` during the exercise.
5. Confirmed the affected folders relied on the expected group-based access configuration.

## Root cause
Missing `GG_Finance` membership prevented the account from obtaining the required group-based access permissions.

## Corrective action
Restored authorised membership in `GG_Finance`, then signed out and back in to refresh the Windows logon security token. **No NTFS or GPO changes were necessary.**

## Validation
- Confirmed membership in Active Directory and with `whoami /groups`.
- Verified Finance and Public access was restored.
- Verified Sales remained inaccessible as intended.
- Confirmed the Departments (`S:`) drive was still available.

## Lessons learned
Visible mapped drives do not prove folder access. Verify group membership and refreshed security tokens before modifying permissions; test both authorised access and denied access.

See [KB-002: Troubleshoot shared-folder access](../Knowledge-Base/KB-002-Shared-Folder-Access.md).

*Personal homelab simulation; all users and incidents are fictional.*
