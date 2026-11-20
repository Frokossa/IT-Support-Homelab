# INC-004 — Group Policy drive-mapping issue

**Type:** Simulated incident · **Priority:** P3 (Medium) · **Category:** Group Policy / Network drives  
**Affected user:** Alice Smith (Sales, fictional) · **Resource:** `\\DC01\Departments` (`S:`)  
**Status:** Resolved — pending user confirmation

## Scenario
A simulated complaint concerned the departmental network drive. A Group Policy Preferences mapping, **GPO - Map Department Share**, was linked to the **Lab Users** OU.

## Investigation
1. Disabled the drive-mapping GPO link to simulate a deployment fault.
2. Ran `gpupdate /force` and examined `gpresult /r`.
3. Confirmed the GPO was no longer applied.
4. **Observed that the previously mapped S: drive remained visible.**
5. Attempted `net use S: /delete`, but successful removal was **not confirmed**.
6. Re-enabled the GPO link; checked that the GPO appeared under applied policies.
7. Confirmed the existing mapping using `net use` and accessible contents with `dir S:\`.

## Findings
The induced configuration issue was the disabled GPO link. An already-created drive mapping persisted after the link stopped applying, consistent with Group Policy Preferences retaining existing configuration. **The exercise did not demonstrate a complete mapping failure or successful recreation of a missing drive.**

## Corrective action and validation
Re-enabled the link, refreshed Group Policy, restarted the Windows 11 client and confirmed:
- The GPO was applied according to `gpresult /r`.
- `S:` remained mapped and resources were accessible.
- Sales and Public permissions worked; Finance stayed restricted.

## Lessons learned
An applied GPO does not prove every preference item ran successfully. Validate actual resource state independently, and distinguish confirmed observations from intended test conditions.

*Personal homelab simulation; all users and incidents are fictional.*
