# KB-001 — Unlock an Active Directory user account

**Category:** AD / Authentication · **Audience:** First-line IT Support · **Environment:** Windows Server 2025 and AD DS  
**Related incident:** [INC-002 — Account lockout](../Incidents/INC-002-AD-Account-Lockout.md)

## Symptoms
A user cannot sign in and Windows reports the domain account is locked.

## Prerequisites
- Authorised access to Active Directory Users and Computers (ADUC).
- Account-management permissions.
- Verified user identity in accordance with organisational policy.

## Procedure
1. Open **Server Manager → Tools → Active Directory Users and Computers**.
2. Find the affected user and open **Properties → Account**.
3. Check whether the account is locked or disabled.
4. On the domain controller, open **Event Viewer → Windows Logs → Security**.
5. Filter for **Event ID 4740**.
6. Review the affected account, event time and caller computer to help determine what triggered the lockout.
7. Once identity and authorisation are confirmed and the cause assessed, choose **Unlock account** and apply the change.

## Validate and document
- Ask the user to sign in using their own password; never request disclosure of it.
- Confirm access to required network resources and check for repeat lockouts.
- Record investigation, authorisation, action and results in the incident ticket.

## Escalate if
The account repeatedly locks, the source cannot be established, or suspicious authentication behaviour is suspected.

## Related commands
```cmd
net accounts /domain
whoami
```

*Personal homelab knowledge-base example.*
