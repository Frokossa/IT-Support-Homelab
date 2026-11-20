# Session 5 — PowerShell system diagnostics

**Environment:** Windows 11 Enterprise, `corp.lab`  
**Script:** [IT-Support-Diagnostics.ps1](../Scripts/IT-Support-Diagnostics.ps1)

## Objective
Develop a reusable **read-only** PowerShell script for first-line support diagnostics.

## Functionality
The script collects:
- Computer name, Windows product name and OS version.
- IPv4 addresses, default gateway and DNS configuration.
- DHCP Client, DNS Client and Windows Update service status.
- Automatic services that are not running.

It writes a text report to the current user's Desktop: `IT-Support-Report.txt`.

## Troubleshooting during development
- **Initial error:** PowerShell reported a null `FilePath` parameter.
- **Cause:** Two spelling errors in script variable / file-output handling.
- **Correction:** Fixed the spelling errors and reran the script.
- **Observed result:** Script execution completed successfully. The original session report stated that full report-content validation remained to be checked against expected sections.

## Skills demonstrated
PowerShell pipelines, command output formatting, error interpretation, diagnostics and documentation.

## Security note
The script does not alter configuration, but generated output contains host and network details. Review and sanitise reports before public sharing.
