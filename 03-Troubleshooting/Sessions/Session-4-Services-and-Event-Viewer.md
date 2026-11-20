# Session 4 — Windows services and Event Viewer

**Environment:** Windows 11 Enterprise, `corp.lab` · **Outcome:** Investigation completed; no confirmed service fault.

## Objective
Inspect Windows service states with Services and PowerShell, then review relevant event logs.

## Investigation
1. Opened `services.msc` and inspected DHCP Client, DNS Client and Windows Update.
2. Confirmed all three were running.
3. Recorded startup types:
   - DHCP Client — Automatic
   - DNS Client — Automatic (Trigger Start)
   - Windows Update — Manual (Trigger Start)
4. Used `Get-Service` to validate current service states.
5. Queried automatic services not running. Results included Microsoft Edge Update Service, Group Policy Client and Downloaded Maps Manager.
6. Reviewed service-related entries in Event Viewer. No matching Service Control Manager events were identified in the filtered inspection.
7. Recorded an **Event ID 7001** associated with a Customer Experience Improvement Program logon notification; the event source was **not confirmed**.

## Findings
A stopped service configured for automatic startup does not automatically imply a fault; some are trigger-started or only run when needed. The observed event was insufficient to establish a Service Control Manager dependency failure.

## Corrective action
None. No services were restarted, disabled or reconfigured.

## Conclusion
The inspections were completed. No confirmed service problem requiring intervention was established.

## Lessons learned
Review startup type and running state separately. Before attributing an event to a fault, verify its source, timestamp, level and description.
