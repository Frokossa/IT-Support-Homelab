# KB-002 — Troubleshoot shared-folder access denied

**Category:** AD / File sharing / NTFS permissions · **Audience:** First-line IT Support  
**Related incident:** [INC-003 — Finance folder access denied](../Incidents/INC-003-Finance-Folder-Access-Denied.md)

## Symptoms
A user can sign in and see a mapped network drive but receives **Access Denied** when opening a departmental folder.

## Prerequisites
Have appropriate permissions to inspect AD and file-server settings, and verify identity and authorisation for the requested access.

## Troubleshooting workflow

### 1. Verify connectivity
```cmd
ping DC01
dir \\DC01\Departments
```
If the share is unreachable, investigate DNS, networking and SMB before changing permissions.

### 2. Check the user's groups
```cmd
whoami
whoami /groups
```
Confirm the expected group appears in the current Windows security token (for example, `GG_Finance`).

### 3. Inspect Active Directory membership
Open **ADUC → User properties → Member Of**. Determine whether an approved departmental group is missing.

### 4. Verify share and NTFS permissions
On the file server, inspect **Properties → Security → Advanced** and **Sharing → Advanced Sharing → Permissions**. Effective network access is constrained by both share and NTFS permissions. Avoid overly broad access grants.

### 5. Restore approved group membership
Only with authorisation, add the user to the required security group. Ask them to sign out completely and back in to refresh their logon token.

## Validation
- Confirm group membership using `whoami /groups`.
- Test access to the authorised folder; if Modify rights are required, create/edit/delete a temporary file.
- Confirm restricted folders remain inaccessible.
- Record all observations and actions in the incident ticket.

## Escalate if
Approved group membership exists but access remains denied, ACL inheritance is inconsistent, SMB authentication fails, or access has not been authorised.

## Security principles
Follow least privilege; prefer group-based access over per-user ACL changes; never weaken NTFS controls simply to bypass an error.

*Personal homelab knowledge-base example.*
