# Session 3 — Group Policy troubleshooting

**Environment:** Windows Server 2025, Windows 11 Enterprise, `corp.lab`  
**Test account:** `CORP\alice.smith` (fictional) · **GPO:** `GPO - Map Department Share`  
**Outcome:** Four functional tests passed; Event Viewer inspection inconclusive.

## Objective
Confirm a domain user's policy processing and mapping of departmental drive `S:`.

## Investigation and results

| Test | Method | Result |
|---|---|---|
| Refresh Group Policy | `gpupdate /force` | Passed |
| Generate policy report | `gpresult /h "%USERPROFILE%\Desktop\GPO-Report.html" /f` | Passed |
| Confirm applied GPO | Inspected generated HTML report | Passed |
| Check network drive | `net use S:` | Passed — mapped to `\\DC01\Departments` |
| Inspect Event Viewer | GroupPolicy → Operational log | Inconclusive — no recent matching events identified |

## Interpretation
The expected GPO was listed in the applied policies report and the drive mapping pointed to the correct share. These observations establish functional operation but do not alone prove each Group Policy Preferences item executed at the time of inspection.

No GPO changes were necessary; no confirmed policy failure was observed.

## Lessons learned
Correlate `gpresult` with the actual mapped-drive state. If event inspection is inconclusive, document that outcome rather than inferring a fault.
