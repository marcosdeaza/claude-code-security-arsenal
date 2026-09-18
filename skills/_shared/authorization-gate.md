# Shared authorization gate

*A reusable pre-flight checklist that any offensive skill in this collection can
reference. Original addition by this collection — see `../../docs/ETHICS.md` for
the full policy.*

Before assisting with **active** reconnaissance, exploitation, C2, lateral
movement, or any action that touches a system, confirm scope:

```
[ ] Target(s) and IP/domain scope are written down and match the authorization
[ ] Authorization type on file:
      ( ) Signed SOW / ROE
      ( ) In-scope bug-bounty program
      ( ) Internal testing with org authority
      ( ) CTF / challenge platform
      ( ) Owned lab / system
[ ] Explicit exclusions noted (out-of-scope hosts, data, times, techniques)
[ ] Testing window / rate limits agreed
[ ] Emergency contact + stop condition agreed
[ ] Data-handling rules for findings & client data agreed
```

If any box can't be checked, do **not** proceed with the offensive action.
Offer the defensive or planning-only path instead (e.g. document the
methodology, prepare the test plan, or run the analysis against owned data).

Defensive, analysis-only, and educational tasks (log analysis, IR on your own
logs, detection engineering, GRC, reverse engineering of owned/consented
samples) don't require this gate.
